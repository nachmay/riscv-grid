#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "pulp.h"
#include "mlShared.h"

#define MAX_SIZE 1024
#define BASE_TCDM 0x10008000
#define NUM_CORES 4
#define NUM_DIRECTIONS 4
#define NUM_WORDS_STACK 32
#define NUM_ITER 50
#define FIFO_STRIDE (sizeof(fifo_t))

typedef struct {
    volatile uint32_t data[MAX_SIZE];
    volatile uint32_t front;
    volatile uint32_t rear;
} fifo_t;

enum { NORTH = 0, SOUTH = 1, EAST = 2, WEST = 3 };

#define IPR_INDEX(core, dir) ((core) * NUM_DIRECTIONS + (dir))
#define IPR_PTR(core, dir) ((fifo_t *)(BASE_TCDM + IPR_INDEX(core, dir) * FIFO_STRIDE))

bool is_empty(fifo_t *fifo) {
    return fifo->front == fifo->rear;
}

inline bool is_full(fifo_t *fifo) {
    uint32_t next_rear = fifo->rear + 1;
    if (next_rear == MAX_SIZE) next_rear = 0;
    return next_rear == fifo->front;
}

inline void enqueue(fifo_t *fifo, uint32_t val) {
    while (is_full(fifo));
    fifo->data[fifo->rear] = val;
    fifo->rear++;
    if (fifo->rear == MAX_SIZE) fifo->rear = 0;
}

inline uint32_t dequeue(fifo_t *fifo) {
    while (is_empty(fifo));
    uint32_t val = fifo->data[fifo->front];
    fifo->front++;
    if (fifo->front == MAX_SIZE) fifo->front = 0;
    return val;
}

void get_target_ipr(int writer_core, int direction, int *target_core, int *target_dir) {
    switch (writer_core) {
        case 0:
            if (direction == EAST)  { *target_core = 1; *target_dir = WEST; }
            if (direction == WEST)  { *target_core = 1; *target_dir = EAST; }
            if (direction == NORTH) { *target_core = 2; *target_dir = SOUTH; }
            if (direction == SOUTH) { *target_core = 2; *target_dir = NORTH; }
            break;
        case 1:
            if (direction == EAST)  { *target_core = 0; *target_dir = WEST; }
            if (direction == WEST)  { *target_core = 0; *target_dir = EAST; }
            if (direction == NORTH) { *target_core = 3; *target_dir = SOUTH; }
            if (direction == SOUTH) { *target_core = 3; *target_dir = NORTH; }
            break;
        case 2:
            if (direction == EAST)  { *target_core = 3; *target_dir = WEST; }
            if (direction == WEST)  { *target_core = 3; *target_dir = EAST; }
            if (direction == NORTH) { *target_core = 0; *target_dir = SOUTH; }
            if (direction == SOUTH) { *target_core = 0; *target_dir = NORTH; }
            break;
        case 3:
            if (direction == EAST)  { *target_core = 2; *target_dir = WEST; }
            if (direction == WEST)  { *target_core = 2; *target_dir = EAST; }
            if (direction == NORTH) { *target_core = 1; *target_dir = SOUTH; }
            if (direction == SOUTH) { *target_core = 1; *target_dir = NORTH; }
            break;
    }
}

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    if (get_core_num() < 3) return -1;

    const int writer1_core = 1; // EAST → 0 (WEST)
    const int writer2_core = 2; // NORTH → 0 (SOUTH)
    const int reader_core  = 0;

    int tgt_core1, tgt_dir1;
    int tgt_core2, tgt_dir2;
    get_target_ipr(writer1_core, EAST, &tgt_core1, &tgt_dir1);
    get_target_ipr(writer2_core, NORTH, &tgt_core2, &tgt_dir2);

    fifo_t *write_fifo1 = NULL;
    fifo_t *write_fifo2 = NULL;
    fifo_t *read_fifo_west  = NULL;
    fifo_t *read_fifo_south = NULL;

    if (core_id == writer1_core)
        write_fifo1 = IPR_PTR(tgt_core1, tgt_dir1);
    if (core_id == writer2_core)
        write_fifo2 = IPR_PTR(tgt_core2, tgt_dir2);

    if (core_id == reader_core) {
        read_fifo_west  = IPR_PTR(reader_core, WEST);
        read_fifo_south = IPR_PTR(reader_core, SOUTH);
        read_fifo_west->front = read_fifo_west->rear = 0;
        read_fifo_south->front = read_fifo_south->rear = 0;
    }

    // Writer values
    volatile uint32_t values_from_core1[NUM_WORDS_STACK];
    volatile uint32_t values_from_core2[NUM_WORDS_STACK];

    if (core_id == writer1_core) {
        for (int i = 0; i < NUM_WORDS_STACK; i++)
            values_from_core1[i] = 0xDEAD0000 | (core_id << 8) | i;
    }

    if (core_id == writer2_core) {
        for (int i = 0; i < NUM_WORDS_STACK; i++)
            values_from_core2[i] = 0xDEAD0000 | (core_id << 8) | i;
    }

    synch_barrier();
    perf_begin();

    if (core_id == writer1_core || core_id == writer2_core) {
        fifo_t *fifo = (core_id == writer1_core) ? write_fifo1 : write_fifo2;
        volatile uint32_t *val_ptr = (core_id == writer1_core) ? values_from_core1 : values_from_core2;

        for (int iter = 0; iter < NUM_ITER; iter++) {
            enqueue(fifo, val_ptr[0]);  enqueue(fifo, val_ptr[1]);
            enqueue(fifo, val_ptr[2]);  enqueue(fifo, val_ptr[3]);
            enqueue(fifo, val_ptr[4]);  enqueue(fifo, val_ptr[5]);
            enqueue(fifo, val_ptr[6]);  enqueue(fifo, val_ptr[7]);
            enqueue(fifo, val_ptr[8]);  enqueue(fifo, val_ptr[9]);
            enqueue(fifo, val_ptr[10]); enqueue(fifo, val_ptr[11]);
            enqueue(fifo, val_ptr[12]); enqueue(fifo, val_ptr[13]);
            enqueue(fifo, val_ptr[14]); enqueue(fifo, val_ptr[15]);
            enqueue(fifo, val_ptr[16]); enqueue(fifo, val_ptr[17]);
            enqueue(fifo, val_ptr[18]); enqueue(fifo, val_ptr[19]);
            enqueue(fifo, val_ptr[20]); enqueue(fifo, val_ptr[21]);
            enqueue(fifo, val_ptr[22]); enqueue(fifo, val_ptr[23]);
            enqueue(fifo, val_ptr[24]); enqueue(fifo, val_ptr[25]);
            enqueue(fifo, val_ptr[26]); enqueue(fifo, val_ptr[27]);
            enqueue(fifo, val_ptr[28]); enqueue(fifo, val_ptr[29]);
            enqueue(fifo, val_ptr[30]); enqueue(fifo, val_ptr[31]);
        }
    }

    if (core_id == reader_core) {
        for (int iter = 0; iter < NUM_ITER; iter++) {
            // Unrolled read from WEST (writer1_core)
            volatile uint32_t val_w0 = dequeue(read_fifo_west);
            volatile uint32_t val_w1 = dequeue(read_fifo_west);
            volatile uint32_t val_w2 = dequeue(read_fifo_west);
            volatile uint32_t val_w3 = dequeue(read_fifo_west);
            volatile uint32_t val_w4 = dequeue(read_fifo_west);
            volatile uint32_t val_w5 = dequeue(read_fifo_west);
            volatile uint32_t val_w6 = dequeue(read_fifo_west);
            volatile uint32_t val_w7 = dequeue(read_fifo_west);
            volatile uint32_t val_w8 = dequeue(read_fifo_west);
            volatile uint32_t val_w9 = dequeue(read_fifo_west);
            volatile uint32_t val_w10 = dequeue(read_fifo_west);
            volatile uint32_t val_w11 = dequeue(read_fifo_west);
            volatile uint32_t val_w12 = dequeue(read_fifo_west);
            volatile uint32_t val_w13 = dequeue(read_fifo_west);
            volatile uint32_t val_w14 = dequeue(read_fifo_west);
            volatile uint32_t val_w15 = dequeue(read_fifo_west);
            volatile uint32_t val_w16 = dequeue(read_fifo_west);
            volatile uint32_t val_w17 = dequeue(read_fifo_west);
            volatile uint32_t val_w18 = dequeue(read_fifo_west);
            volatile uint32_t val_w19 = dequeue(read_fifo_west);
            volatile uint32_t val_w20 = dequeue(read_fifo_west);
            volatile uint32_t val_w21 = dequeue(read_fifo_west);
            volatile uint32_t val_w22 = dequeue(read_fifo_west);
            volatile uint32_t val_w23 = dequeue(read_fifo_west);
            volatile uint32_t val_w24 = dequeue(read_fifo_west);
            volatile uint32_t val_w25 = dequeue(read_fifo_west);
            volatile uint32_t val_w26 = dequeue(read_fifo_west);
            volatile uint32_t val_w27 = dequeue(read_fifo_west);
            volatile uint32_t val_w28 = dequeue(read_fifo_west);
            volatile uint32_t val_w29 = dequeue(read_fifo_west);
            volatile uint32_t val_w30 = dequeue(read_fifo_west);
            volatile uint32_t val_w31 = dequeue(read_fifo_west);

            // Unrolled read from SOUTH (writer2_core)
            volatile uint32_t val_s0 = dequeue(read_fifo_south);
            volatile uint32_t val_s1 = dequeue(read_fifo_south);
            volatile uint32_t val_s2 = dequeue(read_fifo_south);
            volatile uint32_t val_s3 = dequeue(read_fifo_south);
            volatile uint32_t val_s4 = dequeue(read_fifo_south);
            volatile uint32_t val_s5 = dequeue(read_fifo_south);
            volatile uint32_t val_s6 = dequeue(read_fifo_south);
            volatile uint32_t val_s7 = dequeue(read_fifo_south);
            volatile uint32_t val_s8 = dequeue(read_fifo_south);
            volatile uint32_t val_s9 = dequeue(read_fifo_south);
            volatile uint32_t val_s10 = dequeue(read_fifo_south);
            volatile uint32_t val_s11 = dequeue(read_fifo_south);
            volatile uint32_t val_s12 = dequeue(read_fifo_south);
            volatile uint32_t val_s13 = dequeue(read_fifo_south);
            volatile uint32_t val_s14 = dequeue(read_fifo_south);
            volatile uint32_t val_s15 = dequeue(read_fifo_south);
            volatile uint32_t val_s16 = dequeue(read_fifo_south);
            volatile uint32_t val_s17 = dequeue(read_fifo_south);
            volatile uint32_t val_s18 = dequeue(read_fifo_south);
            volatile uint32_t val_s19 = dequeue(read_fifo_south);
            volatile uint32_t val_s20 = dequeue(read_fifo_south);
            volatile uint32_t val_s21 = dequeue(read_fifo_south);
            volatile uint32_t val_s22 = dequeue(read_fifo_south);
            volatile uint32_t val_s23 = dequeue(read_fifo_south);
            volatile uint32_t val_s24 = dequeue(read_fifo_south);
            volatile uint32_t val_s25 = dequeue(read_fifo_south);
            volatile uint32_t val_s26 = dequeue(read_fifo_south);
            volatile uint32_t val_s27 = dequeue(read_fifo_south);
            volatile uint32_t val_s28 = dequeue(read_fifo_south);
            volatile uint32_t val_s29 = dequeue(read_fifo_south);
            volatile uint32_t val_s30 = dequeue(read_fifo_south);
            volatile uint32_t val_s31 = dequeue(read_fifo_south);
        }
    }

    synch_barrier();
    perf_end();
    return 0;
}


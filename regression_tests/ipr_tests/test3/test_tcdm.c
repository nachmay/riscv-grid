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
#define NUM_WORDS 1024
#define NUM_ITER 32
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
    //fifo->data[fifo->rear] =  0xDEAD0000 | (1 << 8) | i;
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
            if (direction == EAST) { *target_core = 1; *target_dir = WEST; }
            if (direction == WEST) { *target_core = 1; *target_dir = EAST; }
            if (direction == NORTH){ *target_core = 2; *target_dir = SOUTH; }
            if (direction == SOUTH){ *target_core = 2; *target_dir = NORTH; }
            break;
        case 1:
            if (direction == EAST) { *target_core = 0; *target_dir = WEST; }
            if (direction == WEST) { *target_core = 0; *target_dir = EAST; }
            if (direction == NORTH){ *target_core = 3; *target_dir = SOUTH; }
            if (direction == SOUTH){ *target_core = 3; *target_dir = NORTH; }
            break;
        case 2:
            if (direction == EAST) { *target_core = 3; *target_dir = WEST; }
            if (direction == WEST) { *target_core = 3; *target_dir = EAST; }
            if (direction == NORTH){ *target_core = 0; *target_dir = SOUTH; }
            if (direction == SOUTH){ *target_core = 0; *target_dir = NORTH; }
            break;
        case 3:
            if (direction == EAST) { *target_core = 2; *target_dir = WEST; }
            if (direction == WEST) { *target_core = 2; *target_dir = EAST; }
            if (direction == NORTH){ *target_core = 1; *target_dir = SOUTH; }
            if (direction == SOUTH){ *target_core = 1; *target_dir = NORTH; }
            break;
    }
}

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    if (get_core_num() < 2) return -1;

    int write_dir = EAST;
    int read_dir  = WEST;
    int writer_core = 1;
    int reader_core = 0;
    int tgt_core, tgt_dir;
    get_target_ipr(writer_core, write_dir, &tgt_core, &tgt_dir);

    fifo_t *write_fifo = NULL;
    fifo_t *read_fifo  = NULL;

    if (core_id == writer_core)
        write_fifo = IPR_PTR(tgt_core, tgt_dir);

    if (core_id == reader_core) {
        read_fifo = IPR_PTR(reader_core, read_dir);
        read_fifo->front = 0;
        read_fifo->rear  = 0;
    }

    volatile uint32_t values[NUM_WORDS_STACK];
    if (core_id == writer_core) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    synch_barrier();
    perf_begin();
/*
    if (core_id == writer_core) {
        for (int i = 0; i < NUM_WORDS; i++) {
            //enqueue(write_fifo, values[i]);
            enqueue(write_fifo, i);
        }
    }
*/
    if (core_id == writer_core) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
                enqueue(write_fifo, values[0]);
                enqueue(write_fifo, values[1]);
                enqueue(write_fifo, values[2]);
                enqueue(write_fifo, values[3]);
                enqueue(write_fifo, values[4]);
                enqueue(write_fifo, values[5]);
                enqueue(write_fifo, values[6]);
                enqueue(write_fifo, values[7]);
                enqueue(write_fifo, values[8]);
                enqueue(write_fifo, values[9]);
                enqueue(write_fifo, values[10]);
                enqueue(write_fifo, values[11]);
                enqueue(write_fifo, values[12]);
                enqueue(write_fifo, values[13]);
                enqueue(write_fifo, values[14]);
                enqueue(write_fifo, values[15]);
                enqueue(write_fifo, values[16]);
                enqueue(write_fifo, values[17]);
                enqueue(write_fifo, values[18]);
                enqueue(write_fifo, values[19]);
                enqueue(write_fifo, values[20]);
                enqueue(write_fifo, values[21]);
                enqueue(write_fifo, values[22]);
                enqueue(write_fifo, values[23]);
                enqueue(write_fifo, values[24]);
                enqueue(write_fifo, values[25]);
                enqueue(write_fifo, values[26]);
                enqueue(write_fifo, values[27]);
                enqueue(write_fifo, values[28]);
                enqueue(write_fifo, values[29]);
                enqueue(write_fifo, values[30]);
                enqueue(write_fifo, values[31]);
        }
    }

    if (core_id == reader_core) {
        for (int iter = 0; iter < NUM_ITER; iter++) {

            uint32_t val_0 = dequeue(read_fifo);
            uint32_t val_1 = dequeue(read_fifo);
            uint32_t val_2 = dequeue(read_fifo);
            uint32_t val_3 = dequeue(read_fifo);
            uint32_t val_4 = dequeue(read_fifo);
            uint32_t val_5 = dequeue(read_fifo);
            uint32_t val_6 = dequeue(read_fifo);
            uint32_t val_7 = dequeue(read_fifo);
            uint32_t val_8 = dequeue(read_fifo);
            uint32_t val_9 = dequeue(read_fifo);
            uint32_t val_10 = dequeue(read_fifo);
            uint32_t val_11 = dequeue(read_fifo);
            uint32_t val_12 = dequeue(read_fifo);
            uint32_t val_13 = dequeue(read_fifo);
            uint32_t val_14 = dequeue(read_fifo);
            uint32_t val_15 = dequeue(read_fifo);
            uint32_t val_16 = dequeue(read_fifo);
            uint32_t val_17 = dequeue(read_fifo);
            uint32_t val_18 = dequeue(read_fifo);
            uint32_t val_19 = dequeue(read_fifo);
            uint32_t val_20 = dequeue(read_fifo);
            uint32_t val_21 = dequeue(read_fifo);
            uint32_t val_22 = dequeue(read_fifo);
            uint32_t val_23 = dequeue(read_fifo);
            uint32_t val_24 = dequeue(read_fifo);
            uint32_t val_25 = dequeue(read_fifo);
            uint32_t val_26 = dequeue(read_fifo);
            uint32_t val_27 = dequeue(read_fifo);
            uint32_t val_28 = dequeue(read_fifo);
            uint32_t val_29 = dequeue(read_fifo);
            uint32_t val_30 = dequeue(read_fifo);
            uint32_t val_31 = dequeue(read_fifo);
        }
    }

    synch_barrier();
    perf_end();
    return 0;
}


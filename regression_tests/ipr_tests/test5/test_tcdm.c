#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "pulp.h"
#include "mlShared.h"

#define MAX_SIZE 64
#define BASE_TCDM 0x10008000
#define NUM_CORES 4
#define NUM_DIRECTIONS 4
#define NUM_WORDS_STACK 32
#define NUM_WORDS 32
#define NUM_ITER 10
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

bool is_full(fifo_t *fifo) {
    uint32_t next_rear = fifo->rear + 1;
    if (next_rear == MAX_SIZE) next_rear = 0;
    return next_rear == fifo->front;
}

void enqueue(fifo_t *fifo, uint32_t val) {
    while (is_full(fifo));
    fifo->data[fifo->rear] = val;
    fifo->rear++;
    if (fifo->rear == MAX_SIZE) fifo->rear = 0;
}


uint32_t dequeue(fifo_t *fifo) {
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



    int write_dir_0_1 = WEST;
    int write_dir_0_2 = SOUTH;
    int write_dir_1_1 = EAST;
    int write_dir_1_2 = SOUTH;
    int write_dir_2_1 = WEST;
    int write_dir_2_2 = NORTH;
    int write_dir_3_1 = EAST;
    int write_dir_3_2 = NORTH;

    int read_dir_0_1 = WEST;
    int read_dir_0_2 = SOUTH;
    int read_dir_1_1 = EAST;
    int read_dir_1_2 = SOUTH;
    int read_dir_2_1 = WEST;
    int read_dir_2_2 = NORTH;
    int read_dir_3_1 = EAST;
    int read_dir_3_2 = NORTH;


    //int writer_core = 1;
    //int reader_core = 0;
    //int tgt_core, tgt_dir;
    //get_target_ipr(writer_core, write_dir, &tgt_core, &tgt_dir);

    fifo_t *write_fifo_0to1 = NULL;   
    fifo_t *write_fifo_0to2 = NULL;
    fifo_t *write_fifo_1to0 = NULL;
    fifo_t *write_fifo_1to3 = NULL;
    fifo_t *write_fifo_2to0 = NULL;
    fifo_t *write_fifo_2to3 = NULL;
    fifo_t *write_fifo_3to1 = NULL;
    fifo_t *write_fifo_3to2 = NULL;

    fifo_t *read_fifo_0from1 = NULL;   
    fifo_t *read_fifo_0from2 = NULL;
    fifo_t *read_fifo_1from0 = NULL;
    fifo_t *read_fifo_1from3 = NULL;
    fifo_t *read_fifo_2from0 = NULL;
    fifo_t *read_fifo_2from3 = NULL;
    fifo_t *read_fifo_3from1 = NULL;
    fifo_t *read_fifo_3from2 = NULL;



    if (core_id == 0) {
        write_fifo_0to1 = IPR_PTR(1, EAST);
        write_fifo_0to2 = IPR_PTR(2, NORTH);
    }

    if (core_id == 1) {
        write_fifo_1to0 = IPR_PTR(0, WEST);
        write_fifo_1to3 = IPR_PTR(3, NORTH);
    }

    if (core_id == 2) {
        write_fifo_2to3 = IPR_PTR(3, EAST);
        write_fifo_2to0 = IPR_PTR(0, SOUTH);
    }

    if (core_id == 3) {
        write_fifo_3to2 = IPR_PTR(2, WEST);
        write_fifo_3to1 = IPR_PTR(1, SOUTH);
    }



    if (core_id == 0) {
        read_fifo_0from1 = IPR_PTR(0, WEST);
        read_fifo_0from1->front = 0;
        read_fifo_0from1->rear  = 0;

        read_fifo_0from2 = IPR_PTR(0, SOUTH);
        read_fifo_0from2->front = 0;
        read_fifo_0from2->rear  = 0;

    }

    if (core_id == 1) {
        read_fifo_1from0 = IPR_PTR(1, EAST);
        read_fifo_1from0->front = 0;
        read_fifo_1from0->rear  = 0;

        read_fifo_1from3 = IPR_PTR(1, SOUTH);
        read_fifo_1from3->front = 0;
        read_fifo_1from3->rear  = 0;

    }

    if (core_id == 2) {
        read_fifo_2from3 = IPR_PTR(2, WEST);
        read_fifo_2from3->front = 0;
        read_fifo_2from3->rear  = 0;

        read_fifo_2from0 = IPR_PTR(2, NORTH);
        read_fifo_2from0->front = 0;
        read_fifo_2from0->rear  = 0;

    }

    if (core_id == 3) {
        read_fifo_3from2 = IPR_PTR(3, EAST);
        read_fifo_3from2->front = 0;
        read_fifo_3from2->rear  = 0;

        read_fifo_3from1 = IPR_PTR(3, NORTH);
        read_fifo_3from1->front = 0;
        read_fifo_3from1->rear  = 0;

    }



    // Prepare data to write (in core 0)
    uint32_t values_to_write_0[NUM_WORDS_STACK];
    uint32_t values_to_write_1[NUM_WORDS_STACK];
    uint32_t values_to_write_2[NUM_WORDS_STACK];
    uint32_t values_to_write_3[NUM_WORDS_STACK];


    if (core_id == 0) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_0[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 1) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_1[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 2) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_2[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 3) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_3[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }



    synch_barrier();
    perf_begin();


    if (core_id == 0) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            enqueue(write_fifo_0to1, values_to_write_0[0]);
            enqueue(write_fifo_0to2, values_to_write_0[0]);
            uint32_t val_1_0 = dequeue(read_fifo_0from1);
            uint32_t val_2_0 = dequeue(read_fifo_0from2);

            enqueue(write_fifo_0to1, values_to_write_0[1]);
            enqueue(write_fifo_0to2, values_to_write_0[1]);
            uint32_t val_1_1 = dequeue(read_fifo_0from1);
            uint32_t val_2_1 = dequeue(read_fifo_0from2);

            enqueue(write_fifo_0to1, values_to_write_0[2]);
            enqueue(write_fifo_0to2, values_to_write_0[2]);
            uint32_t val_1_2 = dequeue(read_fifo_0from1);
            uint32_t val_2_2 = dequeue(read_fifo_0from2);

            enqueue(write_fifo_0to1, values_to_write_0[3]);
            enqueue(write_fifo_0to2, values_to_write_0[3]);
            uint32_t val_1_3 = dequeue(read_fifo_0from1);
            uint32_t val_2_3 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[4]);
            enqueue(write_fifo_0to2, values_to_write_0[4]);
            uint32_t val_1_4 = dequeue(read_fifo_0from1);
            uint32_t val_2_4 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[5]);
            enqueue(write_fifo_0to2, values_to_write_0[5]);
            uint32_t val_1_5 = dequeue(read_fifo_0from1);
            uint32_t val_2_5 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[6]);
            enqueue(write_fifo_0to2, values_to_write_0[6]);
            uint32_t val_1_6 = dequeue(read_fifo_0from1);
            uint32_t val_2_6 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[7]);
            enqueue(write_fifo_0to2, values_to_write_0[7]);
            uint32_t val_1_7 = dequeue(read_fifo_0from1);
            uint32_t val_2_7 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[8]);
            enqueue(write_fifo_0to2, values_to_write_0[8]);
            uint32_t val_1_8 = dequeue(read_fifo_0from1);
            uint32_t val_2_8 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[9]);
            enqueue(write_fifo_0to2, values_to_write_0[9]);
            uint32_t val_1_9 = dequeue(read_fifo_0from1);
            uint32_t val_2_9 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[10]);
            enqueue(write_fifo_0to2, values_to_write_0[10]);
            uint32_t val_1_10 = dequeue(read_fifo_0from1);
            uint32_t val_2_10 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[11]);
            enqueue(write_fifo_0to2, values_to_write_0[11]);
            uint32_t val_1_11 = dequeue(read_fifo_0from1);
            uint32_t val_2_11 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[12]);
            enqueue(write_fifo_0to2, values_to_write_0[12]);
            uint32_t val_1_12 = dequeue(read_fifo_0from1);
            uint32_t val_2_12 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[13]);
            enqueue(write_fifo_0to2, values_to_write_0[13]);
            uint32_t val_1_13 = dequeue(read_fifo_0from1);
            uint32_t val_2_13 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[14]);
            enqueue(write_fifo_0to2, values_to_write_0[14]);
            uint32_t val_1_14 = dequeue(read_fifo_0from1);
            uint32_t val_2_14 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[15]);
            enqueue(write_fifo_0to2, values_to_write_0[15]);
            uint32_t val_1_15 = dequeue(read_fifo_0from1);
            uint32_t val_2_15 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[16]);
            enqueue(write_fifo_0to2, values_to_write_0[16]);
            uint32_t val_1_16 = dequeue(read_fifo_0from1);
            uint32_t val_2_16 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[17]);
            enqueue(write_fifo_0to2, values_to_write_0[17]);
            uint32_t val_1_17 = dequeue(read_fifo_0from1);
            uint32_t val_2_17 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[18]);
            enqueue(write_fifo_0to2, values_to_write_0[18]);
            uint32_t val_1_18 = dequeue(read_fifo_0from1);
            uint32_t val_2_18 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[19]);
            enqueue(write_fifo_0to2, values_to_write_0[19]);
            uint32_t val_1_19 = dequeue(read_fifo_0from1);
            uint32_t val_2_19 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[20]);
            enqueue(write_fifo_0to2, values_to_write_0[20]);
            uint32_t val_1_20 = dequeue(read_fifo_0from1);
            uint32_t val_2_20 = dequeue(read_fifo_0from2);

            enqueue(write_fifo_0to1, values_to_write_0[21]);
            enqueue(write_fifo_0to2, values_to_write_0[21]);
            uint32_t val_1_21 = dequeue(read_fifo_0from1);
            uint32_t val_2_21 = dequeue(read_fifo_0from2);

            enqueue(write_fifo_0to1, values_to_write_0[22]);
            enqueue(write_fifo_0to2, values_to_write_0[22]);
            uint32_t val_1_22 = dequeue(read_fifo_0from1);
            uint32_t val_2_22 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[23]);
            enqueue(write_fifo_0to2, values_to_write_0[23]);
            uint32_t val_1_23 = dequeue(read_fifo_0from1);
            uint32_t val_2_23 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[24]);
            enqueue(write_fifo_0to2, values_to_write_0[24]);
            uint32_t val_1_24 = dequeue(read_fifo_0from1);
            uint32_t val_2_24 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[25]);
            enqueue(write_fifo_0to2, values_to_write_0[25]);
            uint32_t val_1_25 = dequeue(read_fifo_0from1);
            uint32_t val_2_25 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[26]);
            enqueue(write_fifo_0to2, values_to_write_0[26]);
            uint32_t val_1_26 = dequeue(read_fifo_0from1);
            uint32_t val_2_26 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[27]);
            enqueue(write_fifo_0to2, values_to_write_0[27]);
            uint32_t val_1_27 = dequeue(read_fifo_0from1);
            uint32_t val_2_27 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[28]);
            enqueue(write_fifo_0to2, values_to_write_0[28]);
            uint32_t val_1_28 = dequeue(read_fifo_0from1);
            uint32_t val_2_28 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[29]);
            enqueue(write_fifo_0to2, values_to_write_0[29]);
            uint32_t val_1_29 = dequeue(read_fifo_0from1);
            uint32_t val_2_29 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[30]);
            enqueue(write_fifo_0to2, values_to_write_0[30]);
            uint32_t val_1_30 = dequeue(read_fifo_0from1);
            uint32_t val_2_30 = dequeue(read_fifo_0from2);
            enqueue(write_fifo_0to1, values_to_write_0[31]);
            enqueue(write_fifo_0to2, values_to_write_0[31]);
            uint32_t val_1_31 = dequeue(read_fifo_0from1);
            uint32_t val_2_31 = dequeue(read_fifo_0from2);
        }
    }


    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            enqueue(write_fifo_1to0, values_to_write_1[0]);
            enqueue(write_fifo_1to3, values_to_write_1[0]);
            uint32_t val_1_0 = dequeue(read_fifo_1from0);
            uint32_t val_2_0 = dequeue(read_fifo_1from3);

            enqueue(write_fifo_1to0, values_to_write_1[1]);
            enqueue(write_fifo_1to3, values_to_write_1[1]);
            uint32_t val_1_1 = dequeue(read_fifo_1from0);
            uint32_t val_2_1 = dequeue(read_fifo_1from3);

            enqueue(write_fifo_1to0, values_to_write_1[2]);
            enqueue(write_fifo_1to3, values_to_write_1[2]);
            uint32_t val_1_2 = dequeue(read_fifo_1from0);
            uint32_t val_2_2 = dequeue(read_fifo_1from3);

            enqueue(write_fifo_1to0, values_to_write_1[3]);
            enqueue(write_fifo_1to3, values_to_write_1[3]);
            uint32_t val_1_3 = dequeue(read_fifo_1from0);
            uint32_t val_2_3 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[4]);
            enqueue(write_fifo_1to3, values_to_write_1[4]);
            uint32_t val_1_4 = dequeue(read_fifo_1from0);
            uint32_t val_2_4 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[5]);
            enqueue(write_fifo_1to3, values_to_write_1[5]);
            uint32_t val_1_5 = dequeue(read_fifo_1from0);
            uint32_t val_2_5 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[6]);
            enqueue(write_fifo_1to3, values_to_write_1[6]);
            uint32_t val_1_6 = dequeue(read_fifo_1from0);
            uint32_t val_2_6 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[7]);
            enqueue(write_fifo_1to3, values_to_write_1[7]);
            uint32_t val_1_7 = dequeue(read_fifo_1from0);
            uint32_t val_2_7 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[8]);
            enqueue(write_fifo_1to3, values_to_write_1[8]);
            uint32_t val_1_8 = dequeue(read_fifo_1from0);
            uint32_t val_2_8 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[9]);
            enqueue(write_fifo_1to3, values_to_write_1[9]);
            uint32_t val_1_9 = dequeue(read_fifo_1from0);
            uint32_t val_2_9 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[10]);
            enqueue(write_fifo_1to3, values_to_write_1[10]);
            uint32_t val_1_10 = dequeue(read_fifo_1from0);
            uint32_t val_2_10 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[11]);
            enqueue(write_fifo_1to3, values_to_write_1[11]);
            uint32_t val_1_11 = dequeue(read_fifo_1from0);
            uint32_t val_2_11 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[12]);
            enqueue(write_fifo_1to3, values_to_write_1[12]);
            uint32_t val_1_12 = dequeue(read_fifo_1from0);
            uint32_t val_2_12 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[13]);
            enqueue(write_fifo_1to3, values_to_write_1[13]);
            uint32_t val_1_13 = dequeue(read_fifo_1from0);
            uint32_t val_2_13 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[14]);
            enqueue(write_fifo_1to3, values_to_write_1[14]);
            uint32_t val_1_14 = dequeue(read_fifo_1from0);
            uint32_t val_2_14 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[15]);
            enqueue(write_fifo_1to3, values_to_write_1[15]);
            uint32_t val_1_15 = dequeue(read_fifo_1from0);
            uint32_t val_2_15 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[16]);
            enqueue(write_fifo_1to3, values_to_write_1[16]);
            uint32_t val_1_16 = dequeue(read_fifo_1from0);
            uint32_t val_2_16 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[17]);
            enqueue(write_fifo_1to3, values_to_write_1[17]);
            uint32_t val_1_17 = dequeue(read_fifo_1from0);
            uint32_t val_2_17 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[18]);
            enqueue(write_fifo_1to3, values_to_write_1[18]);
            uint32_t val_1_18 = dequeue(read_fifo_1from0);
            uint32_t val_2_18 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[19]);
            enqueue(write_fifo_1to3, values_to_write_1[19]);
            uint32_t val_1_19 = dequeue(read_fifo_1from0);
            uint32_t val_2_19 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[20]);
            enqueue(write_fifo_1to3, values_to_write_1[20]);
            uint32_t val_1_20 = dequeue(read_fifo_1from0);
            uint32_t val_2_20 = dequeue(read_fifo_1from3);

            enqueue(write_fifo_1to0, values_to_write_1[21]);
            enqueue(write_fifo_1to3, values_to_write_1[21]);
            uint32_t val_1_21 = dequeue(read_fifo_1from0);
            uint32_t val_2_21 = dequeue(read_fifo_1from3);

            enqueue(write_fifo_1to0, values_to_write_1[22]);
            enqueue(write_fifo_1to3, values_to_write_1[22]);
            uint32_t val_1_22 = dequeue(read_fifo_1from0);
            uint32_t val_2_22 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[23]);
            enqueue(write_fifo_1to3, values_to_write_1[23]);
            uint32_t val_1_23 = dequeue(read_fifo_1from0);
            uint32_t val_2_23 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[24]);
            enqueue(write_fifo_1to3, values_to_write_1[24]);
            uint32_t val_1_24 = dequeue(read_fifo_1from0);
            uint32_t val_2_24 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[25]);
            enqueue(write_fifo_1to3, values_to_write_1[25]);
            uint32_t val_1_25 = dequeue(read_fifo_1from0);
            uint32_t val_2_25 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[26]);
            enqueue(write_fifo_1to3, values_to_write_1[26]);
            uint32_t val_1_26 = dequeue(read_fifo_1from0);
            uint32_t val_2_26 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[27]);
            enqueue(write_fifo_1to3, values_to_write_1[27]);
            uint32_t val_1_27 = dequeue(read_fifo_1from0);
            uint32_t val_2_27 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[28]);
            enqueue(write_fifo_1to3, values_to_write_1[28]);
            uint32_t val_1_28 = dequeue(read_fifo_1from0);
            uint32_t val_2_28 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[29]);
            enqueue(write_fifo_1to3, values_to_write_1[29]);
            uint32_t val_1_29 = dequeue(read_fifo_1from0);
            uint32_t val_2_29 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[30]);
            enqueue(write_fifo_1to3, values_to_write_1[30]);
            uint32_t val_1_30 = dequeue(read_fifo_1from0);
            uint32_t val_2_30 = dequeue(read_fifo_1from3);
            enqueue(write_fifo_1to0, values_to_write_1[31]);
            enqueue(write_fifo_1to3, values_to_write_1[31]);
            uint32_t val_1_31 = dequeue(read_fifo_1from0);
            uint32_t val_2_31 = dequeue(read_fifo_1from3);
        }
    }


    if (core_id == 2) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            enqueue(write_fifo_2to3, values_to_write_2[0]);
            enqueue(write_fifo_2to0, values_to_write_2[0]);
            uint32_t val_1_0 = dequeue(read_fifo_2from3);
            uint32_t val_2_0 = dequeue(read_fifo_2from0);

            enqueue(write_fifo_2to3, values_to_write_2[1]);
            enqueue(write_fifo_2to0, values_to_write_2[1]);
            uint32_t val_1_1 = dequeue(read_fifo_2from3);
            uint32_t val_2_1 = dequeue(read_fifo_2from0);

            enqueue(write_fifo_2to3, values_to_write_2[2]);
            enqueue(write_fifo_2to0, values_to_write_2[2]);
            uint32_t val_1_2 = dequeue(read_fifo_2from3);
            uint32_t val_2_2 = dequeue(read_fifo_2from0);

            enqueue(write_fifo_2to3, values_to_write_2[3]);
            enqueue(write_fifo_2to0, values_to_write_2[3]);
            uint32_t val_1_3 = dequeue(read_fifo_2from3);
            uint32_t val_2_3 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[4]);
            enqueue(write_fifo_2to0, values_to_write_2[4]);
            uint32_t val_1_4 = dequeue(read_fifo_2from3);
            uint32_t val_2_4 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[5]);
            enqueue(write_fifo_2to0, values_to_write_2[5]);
            uint32_t val_1_5 = dequeue(read_fifo_2from3);
            uint32_t val_2_5 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[6]);
            enqueue(write_fifo_2to0, values_to_write_2[6]);
            uint32_t val_1_6 = dequeue(read_fifo_2from3);
            uint32_t val_2_6 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[7]);
            enqueue(write_fifo_2to0, values_to_write_2[7]);
            uint32_t val_1_7 = dequeue(read_fifo_2from3);
            uint32_t val_2_7 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[8]);
            enqueue(write_fifo_2to0, values_to_write_2[8]);
            uint32_t val_1_8 = dequeue(read_fifo_2from3);
            uint32_t val_2_8 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[9]);
            enqueue(write_fifo_2to0, values_to_write_2[9]);
            uint32_t val_1_9 = dequeue(read_fifo_2from3);
            uint32_t val_2_9 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[10]);
            enqueue(write_fifo_2to0, values_to_write_2[10]);
            uint32_t val_1_10 = dequeue(read_fifo_2from3);
            uint32_t val_2_10 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[11]);
            enqueue(write_fifo_2to0, values_to_write_2[11]);
            uint32_t val_1_11 = dequeue(read_fifo_2from3);
            uint32_t val_2_11 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[12]);
            enqueue(write_fifo_2to0, values_to_write_2[12]);
            uint32_t val_1_12 = dequeue(read_fifo_2from3);
            uint32_t val_2_12 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[13]);
            enqueue(write_fifo_2to0, values_to_write_2[13]);
            uint32_t val_1_13 = dequeue(read_fifo_2from3);
            uint32_t val_2_13 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[14]);
            enqueue(write_fifo_2to0, values_to_write_2[14]);
            uint32_t val_1_14 = dequeue(read_fifo_2from3);
            uint32_t val_2_14 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[15]);
            enqueue(write_fifo_2to0, values_to_write_2[15]);
            uint32_t val_1_15 = dequeue(read_fifo_2from3);
            uint32_t val_2_15 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[16]);
            enqueue(write_fifo_2to0, values_to_write_2[16]);
            uint32_t val_1_16 = dequeue(read_fifo_2from3);
            uint32_t val_2_16 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[17]);
            enqueue(write_fifo_2to0, values_to_write_2[17]);
            uint32_t val_1_17 = dequeue(read_fifo_2from3);
            uint32_t val_2_17 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[18]);
            enqueue(write_fifo_2to0, values_to_write_2[18]);
            uint32_t val_1_18 = dequeue(read_fifo_2from3);
            uint32_t val_2_18 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[19]);
            enqueue(write_fifo_2to0, values_to_write_2[19]);
            uint32_t val_1_19 = dequeue(read_fifo_2from3);
            uint32_t val_2_19 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[20]);
            enqueue(write_fifo_2to0, values_to_write_2[20]);
            uint32_t val_1_20 = dequeue(read_fifo_2from3);
            uint32_t val_2_20 = dequeue(read_fifo_2from0);

            enqueue(write_fifo_2to3, values_to_write_2[21]);
            enqueue(write_fifo_2to0, values_to_write_2[21]);
            uint32_t val_1_21 = dequeue(read_fifo_2from3);
            uint32_t val_2_21 = dequeue(read_fifo_2from0);

            enqueue(write_fifo_2to3, values_to_write_2[22]);
            enqueue(write_fifo_2to0, values_to_write_2[22]);
            uint32_t val_1_22 = dequeue(read_fifo_2from3);
            uint32_t val_2_22 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[23]);
            enqueue(write_fifo_2to0, values_to_write_2[23]);
            uint32_t val_1_23 = dequeue(read_fifo_2from3);
            uint32_t val_2_23 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[24]);
            enqueue(write_fifo_2to0, values_to_write_2[24]);
            uint32_t val_1_24 = dequeue(read_fifo_2from3);
            uint32_t val_2_24 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[25]);
            enqueue(write_fifo_2to0, values_to_write_2[25]);
            uint32_t val_1_25 = dequeue(read_fifo_2from3);
            uint32_t val_2_25 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[26]);
            enqueue(write_fifo_2to0, values_to_write_2[26]);
            uint32_t val_1_26 = dequeue(read_fifo_2from3);
            uint32_t val_2_26 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[27]);
            enqueue(write_fifo_2to0, values_to_write_2[27]);
            uint32_t val_1_27 = dequeue(read_fifo_2from3);
            uint32_t val_2_27 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[28]);
            enqueue(write_fifo_2to0, values_to_write_2[28]);
            uint32_t val_1_28 = dequeue(read_fifo_2from3);
            uint32_t val_2_28 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[29]);
            enqueue(write_fifo_2to0, values_to_write_2[29]);
            uint32_t val_1_29 = dequeue(read_fifo_2from3);
            uint32_t val_2_29 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[30]);
            enqueue(write_fifo_2to0, values_to_write_2[30]);
            uint32_t val_1_30 = dequeue(read_fifo_2from3);
            uint32_t val_2_30 = dequeue(read_fifo_2from0);
            enqueue(write_fifo_2to3, values_to_write_2[31]);
            enqueue(write_fifo_2to0, values_to_write_2[31]);
            uint32_t val_1_31 = dequeue(read_fifo_2from3);
            uint32_t val_2_31 = dequeue(read_fifo_2from0);
        }
    }


    if (core_id == 3) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            enqueue(write_fifo_3to2, values_to_write_3[0]);
            enqueue(write_fifo_3to1, values_to_write_3[0]);
            uint32_t val_1_0 = dequeue(read_fifo_3from2);
            uint32_t val_2_0 = dequeue(read_fifo_3from1);

            enqueue(write_fifo_3to2, values_to_write_3[1]);
            enqueue(write_fifo_3to1, values_to_write_3[1]);
            uint32_t val_1_1 = dequeue(read_fifo_3from2);
            uint32_t val_2_1 = dequeue(read_fifo_3from1);

            enqueue(write_fifo_3to2, values_to_write_3[2]);
            enqueue(write_fifo_3to1, values_to_write_3[2]);
            uint32_t val_1_2 = dequeue(read_fifo_3from2);
            uint32_t val_2_2 = dequeue(read_fifo_3from1);

            enqueue(write_fifo_3to2, values_to_write_3[3]);
            enqueue(write_fifo_3to1, values_to_write_3[3]);
            uint32_t val_1_3 = dequeue(read_fifo_3from2);
            uint32_t val_2_3 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[4]);
            enqueue(write_fifo_3to1, values_to_write_3[4]);
            uint32_t val_1_4 = dequeue(read_fifo_3from2);
            uint32_t val_2_4 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[5]);
            enqueue(write_fifo_3to1, values_to_write_3[5]);
            uint32_t val_1_5 = dequeue(read_fifo_3from2);
            uint32_t val_2_5 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[6]);
            enqueue(write_fifo_3to1, values_to_write_3[6]);
            uint32_t val_1_6 = dequeue(read_fifo_3from2);
            uint32_t val_2_6 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[7]);
            enqueue(write_fifo_3to1, values_to_write_3[7]);
            uint32_t val_1_7 = dequeue(read_fifo_3from2);
            uint32_t val_2_7 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[8]);
            enqueue(write_fifo_3to1, values_to_write_3[8]);
            uint32_t val_1_8 = dequeue(read_fifo_3from2);
            uint32_t val_2_8 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[9]);
            enqueue(write_fifo_3to1, values_to_write_3[9]);
            uint32_t val_1_9 = dequeue(read_fifo_3from2);
            uint32_t val_2_9 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[10]);
            enqueue(write_fifo_3to1, values_to_write_3[10]);
            uint32_t val_1_10 = dequeue(read_fifo_3from2);
            uint32_t val_2_10 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[11]);
            enqueue(write_fifo_3to1, values_to_write_3[11]);
            uint32_t val_1_11 = dequeue(read_fifo_3from2);
            uint32_t val_2_11 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[12]);
            enqueue(write_fifo_3to1, values_to_write_3[12]);
            uint32_t val_1_12 = dequeue(read_fifo_3from2);
            uint32_t val_2_12 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[13]);
            enqueue(write_fifo_3to1, values_to_write_3[13]);
            uint32_t val_1_13 = dequeue(read_fifo_3from2);
            uint32_t val_2_13 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[14]);
            enqueue(write_fifo_3to1, values_to_write_3[14]);
            uint32_t val_1_14 = dequeue(read_fifo_3from2);
            uint32_t val_2_14 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[15]);
            enqueue(write_fifo_3to1, values_to_write_3[15]);
            uint32_t val_1_15 = dequeue(read_fifo_3from2);
            uint32_t val_2_15 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[16]);
            enqueue(write_fifo_3to1, values_to_write_3[16]);
            uint32_t val_1_16 = dequeue(read_fifo_3from2);
            uint32_t val_2_16 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[17]);
            enqueue(write_fifo_3to1, values_to_write_3[17]);
            uint32_t val_1_17 = dequeue(read_fifo_3from2);
            uint32_t val_2_17 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[18]);
            enqueue(write_fifo_3to1, values_to_write_3[18]);
            uint32_t val_1_18 = dequeue(read_fifo_3from2);
            uint32_t val_2_18 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[19]);
            enqueue(write_fifo_3to1, values_to_write_3[19]);
            uint32_t val_1_19 = dequeue(read_fifo_3from2);
            uint32_t val_2_19 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[20]);
            enqueue(write_fifo_3to1, values_to_write_3[20]);
            uint32_t val_1_20 = dequeue(read_fifo_3from2);
            uint32_t val_2_20 = dequeue(read_fifo_3from1);

            enqueue(write_fifo_3to2, values_to_write_3[21]);
            enqueue(write_fifo_3to1, values_to_write_3[21]);
            uint32_t val_1_21 = dequeue(read_fifo_3from2);
            uint32_t val_2_21 = dequeue(read_fifo_3from1);

            enqueue(write_fifo_3to2, values_to_write_3[22]);
            enqueue(write_fifo_3to1, values_to_write_3[22]);
            uint32_t val_1_22 = dequeue(read_fifo_3from2);
            uint32_t val_2_22 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[23]);
            enqueue(write_fifo_3to1, values_to_write_3[23]);
            uint32_t val_1_23 = dequeue(read_fifo_3from2);
            uint32_t val_2_23 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[24]);
            enqueue(write_fifo_3to1, values_to_write_3[24]);
            uint32_t val_1_24 = dequeue(read_fifo_3from2);
            uint32_t val_2_24 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[25]);
            enqueue(write_fifo_3to1, values_to_write_3[25]);
            uint32_t val_1_25 = dequeue(read_fifo_3from2);
            uint32_t val_2_25 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[26]);
            enqueue(write_fifo_3to1, values_to_write_3[26]);
            uint32_t val_1_26 = dequeue(read_fifo_3from2);
            uint32_t val_2_26 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[27]);
            enqueue(write_fifo_3to1, values_to_write_3[27]);
            uint32_t val_1_27 = dequeue(read_fifo_3from2);
            uint32_t val_2_27 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[28]);
            enqueue(write_fifo_3to1, values_to_write_3[28]);
            uint32_t val_1_28 = dequeue(read_fifo_3from2);
            uint32_t val_2_28 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[29]);
            enqueue(write_fifo_3to1, values_to_write_3[29]);
            uint32_t val_1_29 = dequeue(read_fifo_3from2);
            uint32_t val_2_29 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[30]);
            enqueue(write_fifo_3to1, values_to_write_3[30]);
            uint32_t val_1_30 = dequeue(read_fifo_3from2);
            uint32_t val_2_30 = dequeue(read_fifo_3from1);
            enqueue(write_fifo_3to2, values_to_write_3[31]);
            enqueue(write_fifo_3to1, values_to_write_3[31]);
            uint32_t val_1_31 = dequeue(read_fifo_3from2);
            uint32_t val_2_31 = dequeue(read_fifo_3from1);
        }
    }


    synch_barrier();
    perf_end();
    return 0;
}


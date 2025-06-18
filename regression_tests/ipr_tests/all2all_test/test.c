
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "pulp.h"
#include "mlShared.h"

#define MAX_SIZE 1024
#define BASE_L2 0x1c010000
#define NUM_CORES 4
#define NUM_DIRECTIONS 4
#define NUM_WORDS_STACK 32
#define NUM_WORDS 32
#define NUM_ITER 1
#define FIFO_STRIDE (sizeof(fifo_t))

typedef struct {
    volatile uint32_t data[MAX_SIZE];
    volatile uint32_t front;
    volatile uint32_t rear;
} fifo_t;

enum { NORTH = 0, SOUTH = 1, EAST = 2, WEST = 3 };

#define IPR_INDEX(core, dir) ((core) * NUM_DIRECTIONS + (dir))
#define IPR_PTR(core, dir) ((fifo_t *)(BASE_L2 + IPR_INDEX(core, dir) * FIFO_STRIDE))

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
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                enqueue(write_fifo_0to1, values_to_write_0[i]);
                enqueue(write_fifo_0to2, values_to_write_0[i]);
                uint32_t val_1 = dequeue(read_fifo_0from1);
                uint32_t val_2 = dequeue(read_fifo_0from2);



            }
        }
    }

    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                enqueue(write_fifo_1to0, values_to_write_1[i]);
                enqueue(write_fifo_1to3, values_to_write_1[i]);
                uint32_t val_1 = dequeue(read_fifo_1from0);
                uint32_t val_2 = dequeue(read_fifo_1from3);



            }
        }
    }

    if (core_id == 2) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                enqueue(write_fifo_2to3, values_to_write_2[i]);
                enqueue(write_fifo_2to0, values_to_write_2[i]);
                uint32_t val_1 = dequeue(read_fifo_2from3);
                uint32_t val_2 = dequeue(read_fifo_2from0);



            }
        }
    }

    if (core_id == 3) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                enqueue(write_fifo_3to2, values_to_write_3[i]);
                enqueue(write_fifo_3to1, values_to_write_3[i]);
                uint32_t val_1 = dequeue(read_fifo_3from2);
                uint32_t val_2 = dequeue(read_fifo_3from1);



            }
        }
    }


    synch_barrier();
    perf_end();
    return 0;
}



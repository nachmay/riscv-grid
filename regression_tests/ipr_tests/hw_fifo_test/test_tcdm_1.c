#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "pulp.h"
#include "mlShared.h"

#define MAX_SIZE 1024
#define BASE_TCDM 0x10008000
#define NUM_CORES 4
#define NUM_DIRECTIONS 4
#define NUM_OPERATIONS 16
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

    static uint32_t values[NUM_OPERATIONS];
    for (int i = 0; i < NUM_OPERATIONS; i++)
        values[i] = 0xCAFE0000 | i;

    synch_barrier();
    perf_begin();

    if (core_id == writer_core) {
        for (int i = 0; i < NUM_OPERATIONS; i++) {
            enqueue(write_fifo, values[i]);
        }
    }

    if (core_id == reader_core) {
        for (int i = 0; i < NUM_OPERATIONS; i++) {
            uint32_t val = dequeue(read_fifo);
        }
    }

    synch_barrier();
    perf_end();
    return 0;
}


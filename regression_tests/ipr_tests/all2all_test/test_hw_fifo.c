
#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define NUM_WORDS_STACK  32
#define NUM_WORDS 32
#define NUM_ITER 1


int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();
    if (num_cores != 4)
        return -1;

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

    volatile uint32_t *enq_north_ptr = (volatile uint32_t *)IPR_NORTH_BASE;
    volatile uint32_t *enq_south_ptr = (volatile uint32_t *)IPR_SOUTH_BASE;
    volatile uint32_t *enq_east_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *enq_west_ptr = (volatile uint32_t *)IPR_WEST_BASE;

    volatile uint32_t *deq_north_ptr = (volatile uint32_t *)IPR_NORTH_BASE;
    volatile uint32_t *deq_south_ptr = (volatile uint32_t *)IPR_SOUTH_BASE;
    volatile uint32_t *deq_east_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *deq_west_ptr = (volatile uint32_t *)IPR_WEST_BASE;


    // Sync all cores before the test
    synch_barrier();
    perf_begin();


    if (core_id == 0) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                *enq_west_ptr  = values_to_write_0[i];
                *enq_south_ptr  = values_to_write_0[i];
                uint32_t val_0 = *deq_west_ptr;
                uint32_t val_1 = *deq_south_ptr;
            }
        }
    }


    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                *enq_east_ptr  = values_to_write_1[i];
                *enq_south_ptr  = values_to_write_1[i];
                uint32_t val_0 = *deq_east_ptr;
                uint32_t val_1 = *deq_south_ptr;
            }
        }
    }

    if (core_id == 2) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                *enq_west_ptr  = values_to_write_2[i];
                *enq_north_ptr  = values_to_write_2[i];
                uint32_t val_0 = *deq_west_ptr;
                uint32_t val_1 = *deq_north_ptr;
            }
        }
    }

    if (core_id == 3) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            for (int i = 0; i < NUM_WORDS_STACK; i++) {
                *enq_east_ptr  = values_to_write_3[i];
                *enq_north_ptr  = values_to_write_3[i];
                uint32_t val_0 = *deq_east_ptr;
                uint32_t val_1 = *deq_north_ptr;
            }
        }
    }



    synch_barrier();
    perf_end();

    return 0;
}




#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define NUM_WORDS      32

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();
    if (num_cores != 4)
        return -1;

    // Prepare data to write (in core 0)
    uint32_t values_to_write[NUM_WORDS];
    if (core_id == 1) {
        for (int i = 0; i < NUM_WORDS; i++) {
            values_to_write[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    volatile uint32_t *enq_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *deq_ptr = (volatile uint32_t *)IPR_WEST_BASE;

    // Sync all cores before the test
    synch_barrier();
    perf_begin();



    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int i = 0; i < NUM_WORDS; i++) {
            *enq_ptr = values_to_write[i];
        }
    }

    if (core_id == 0) {
        // Reader: dequeue via memory-mapped IPR_WEST_ADDR
        for (int i = 0; i < NUM_WORDS; i++) {
            uint32_t val = *deq_ptr;
        }
    }

    synch_barrier();
    perf_end();

    return 0;
}


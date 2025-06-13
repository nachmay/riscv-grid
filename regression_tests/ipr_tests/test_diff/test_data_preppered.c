#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_ADDR 0x19000000
#define IPR_SOUTH_ADDR 0x19000004
#define NUM_WORDS 40

int main() {
    if (rt_cluster_id() != 0) {
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();

    if (num_cores != 4) {
        return -1;
    }

    synch_barrier();

    // Precompute write data before the loop
    volatile uint32_t *write_ptr = (volatile uint32_t *)IPR_NORTH_ADDR;
    uint32_t write_data[NUM_WORDS] = {
        0xDEAD0000 | (core_id << 8) |  0,  0xDEAD0000 | (core_id << 8) |  1,
        0xDEAD0000 | (core_id << 8) |  2,  0xDEAD0000 | (core_id << 8) |  3,
        0xDEAD0000 | (core_id << 8) |  4,  0xDEAD0000 | (core_id << 8) |  5,
        0xDEAD0000 | (core_id << 8) |  6,  0xDEAD0000 | (core_id << 8) |  7,
        0xDEAD0000 | (core_id << 8) |  8,  0xDEAD0000 | (core_id << 8) |  9,
        0xDEAD0000 | (core_id << 8) | 10,  0xDEAD0000 | (core_id << 8) | 11,
        0xDEAD0000 | (core_id << 8) | 12,  0xDEAD0000 | (core_id << 8) | 13,
        0xDEAD0000 | (core_id << 8) | 14,  0xDEAD0000 | (core_id << 8) | 15,
        0xDEAD0000 | (core_id << 8) | 16,  0xDEAD0000 | (core_id << 8) | 17,
        0xDEAD0000 | (core_id << 8) | 18,  0xDEAD0000 | (core_id << 8) | 19,
        0xDEAD0000 | (core_id << 8) | 20,  0xDEAD0000 | (core_id << 8) | 21,
        0xDEAD0000 | (core_id << 8) | 22,  0xDEAD0000 | (core_id << 8) | 23,
        0xDEAD0000 | (core_id << 8) | 24,  0xDEAD0000 | (core_id << 8) | 25,
        0xDEAD0000 | (core_id << 8) | 26,  0xDEAD0000 | (core_id << 8) | 27,
        0xDEAD0000 | (core_id << 8) | 28,  0xDEAD0000 | (core_id << 8) | 29,
        0xDEAD0000 | (core_id << 8) | 30,  0xDEAD0000 | (core_id << 8) | 31,
        0xDEAD0000 | (core_id << 8) | 32,  0xDEAD0000 | (core_id << 8) | 33,
        0xDEAD0000 | (core_id << 8) | 34,  0xDEAD0000 | (core_id << 8) | 35,
        0xDEAD0000 | (core_id << 8) | 36,  0xDEAD0000 | (core_id << 8) | 37,
        0xDEAD0000 | (core_id << 8) | 38,  0xDEAD0000 | (core_id << 8) | 39
    };

    perf_begin();

    for (int i = 0; i < NUM_WORDS; i++) {
        *write_ptr = write_data[i];
    }

    synch_barrier();

    // Read normally
    volatile uint32_t *read_ptr = (volatile uint32_t *)IPR_SOUTH_ADDR;
    uint32_t read_data[NUM_WORDS];

    for (int i = 0; i < NUM_WORDS; i++) {
        read_data[i] = *read_ptr;
    }

    synch_barrier();
    perf_end();
    return 0;
}


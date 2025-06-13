#include <stdint.h> 
#include "pulp.h"

#define IPR_NORTH_ADDR 0x19000000
#define IPR_SOUTH_ADDR 0x19000004
#define IPR_EAST_ADDR  0x19000008
#define IPR_WEST_ADDR  0x1900000c

#define NUM_WORDS 40

int main() {
    // Run only on cluster 0
    if (rt_cluster_id() != 0) {
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();

    if (num_cores != 4) {
        return -1;
    }

    // Synchronize all cores before starting
    synch_barrier();

    // Directional write addresses
    volatile uint32_t *write_north = (volatile uint32_t *)IPR_NORTH_ADDR;
    volatile uint32_t *write_south = (volatile uint32_t *)IPR_SOUTH_ADDR;
    volatile uint32_t *write_east  = (volatile uint32_t *)IPR_EAST_ADDR;
    volatile uint32_t *write_west  = (volatile uint32_t *)IPR_WEST_ADDR;

    // Write 40 words to each direction
    for (int i = 0; i < NUM_WORDS; i++) {
        uint32_t val = 0xDEAD0000 | (core_id << 8) | i;
        *write_north = val;
        *write_south = val;
        *write_east  = val;
        *write_west  = val;
    }

    // Ensure all writes are finished before reads
    synch_barrier();

    // Directional read addresses
    volatile uint32_t *read_north = (volatile uint32_t *)IPR_NORTH_ADDR;
    volatile uint32_t *read_south = (volatile uint32_t *)IPR_SOUTH_ADDR;
    volatile uint32_t *read_east  = (volatile uint32_t *)IPR_EAST_ADDR;
    volatile uint32_t *read_west  = (volatile uint32_t *)IPR_WEST_ADDR;

    uint32_t read_data_north[NUM_WORDS];
    uint32_t read_data_south[NUM_WORDS];
    uint32_t read_data_east[NUM_WORDS];
    uint32_t read_data_west[NUM_WORDS];

    for (int i = 0; i < NUM_WORDS; i++) {
        read_data_north[i] = *read_north;
        read_data_south[i] = *read_south;
        read_data_east[i]  = *read_east;
        read_data_west[i]  = *read_west;
    }

    // Final sync
    synch_barrier();

    return 0;
}


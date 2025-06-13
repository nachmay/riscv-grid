#include <stdio.h>
#include <stdint.h>
#include "pulp.h"

#define TEST_ADDR_BASE   0x19000000
#define TEST_WORD_COUNT  4

int main() {
    // Run only on cluster 0
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();

    // Synchronize all cores before starting
    synch_barrier();

    volatile uint32_t *ptr = (volatile uint32_t *)TEST_ADDR_BASE;
    uint32_t read_val;

    printf("Core %d: Starting memory probe at 0x%08X\n", core_id, TEST_ADDR_BASE);

    for (int i = 0; i < TEST_WORD_COUNT; i++) {
        read_val = ptr[i];
        printf("Core %d: Read from 0x%08X: 0x%08X\n", core_id, (uint32_t)&ptr[i], read_val);
    }

    printf("Core %d: Memory probe completed.\n", core_id);

    // Synchronize all cores before exiting
    synch_barrier();

    return 0;
}

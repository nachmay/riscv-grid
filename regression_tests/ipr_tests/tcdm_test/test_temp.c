#include <stdio.h>
#include <stdint.h>
#include "pulp.h"

#define IPR_ADDR_BASE 0x19000000
#define TIMEOUT_CYCLES 1000000 // Adjust based on system clock

int main() {
    // Run only on cluster 0
    if (rt_cluster_id() != 0) {
        printf("Cluster %d: Forwarding to cluster 0\n", rt_cluster_id());
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();

    // Log boot
    printf("Core %d: Booted, cluster_id=%d, num_cores=%d\n", core_id, rt_cluster_id(), num_cores);

    // Verify 4 cores
    if (num_cores != 4) {
        printf("Core %d: ERROR: Expected 4 cores, got %d\n", core_id, num_cores);
        return -1;
    }

    // Synchronize all cores before starting
    printf("Core %d: Reaching first barrier\n", core_id);
    synch_barrier();

    // Each core uses a unique IPR address based on core_id
    volatile uint32_t *ptr = (volatile uint32_t *)(IPR_ADDR_BASE + core_id);
    uint32_t write_val = 0xDEADBEE0 + core_id; // Unique value per core
    uint32_t read_val;
    uint32_t cycles;

    printf("Core %d: Writing 0x%08X to 0x%08X\n", core_id, write_val, (uint32_t)ptr);

    // Write to IPR address with timeout
    cycles = 0;
    *ptr = write_val;
    while (!(*ptr == write_val) && cycles < TIMEOUT_CYCLES) {
        cycles++;
    }
    if (cycles >= TIMEOUT_CYCLES) {
        printf("Core %d: ERROR: Write timeout at 0x%08X\n", core_id, (uint32_t)ptr);
        return -1;
    }

    // Synchronize to ensure all writes complete before reads
    printf("Core %d: Reaching second barrier\n", core_id);
    synch_barrier();

    // Read from IPR address with timeout
    printf("Core %d: Reading from 0x%08X\n", core_id, (uint32_t)ptr);
    cycles = 0;
    read_val = *ptr;
    while (!read_val && cycles < TIMEOUT_CYCLES) {
        read_val = *ptr;
        cycles++;
    }
    if (cycles >= TIMEOUT_CYCLES) {
        printf("Core %d: ERROR: Read timeout at 0x%08X\n", core_id, (uint32_t)ptr);
        return -1;
    }

    printf("Core %d: Read 0x%08X from 0x%08X\n", core_id, read_val, (uint32_t)ptr);

    // Verify result
    if (read_val == write_val) {
        printf("Core %d: Test PASSED\n", core_id);
    } else {
        printf("Core %d: Test FAILED: Expected 0x%08X, got 0x%08X\n",
               core_id, write_val, read_val);
    }

    // Synchronize all cores before exiting
    printf("Core %d: Reaching final barrier\n", core_id);
    synch_barrier();

    return 0;
}

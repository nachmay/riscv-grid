/*
#include <stdio.h>
#include <stdint.h>
#include "pulp.h"

#define IPR_ADDR_BASE 0x19000000
#define TIMEOUT_CYCLES 1000000 // Adjust based on system clock
#define NUM_WORDS 40

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
    synch_barrier();

    // Setup FIFO/IPR address for this core
    volatile uint32_t *ptr = (volatile uint32_t *)(IPR_ADDR_BASE + core_id * 4);
    uint32_t write_data[NUM_WORDS];
    uint32_t read_data[NUM_WORDS];

    // Prepare data
    for (int i = 0; i < NUM_WORDS; i++) {
        write_data[i] = 0xDEAD0000 | (core_id << 8) | i; // Unique value
    }

    // 🚀 Burst write: 40 words, no prints, no delays
    for (int i = 0; i < NUM_WORDS; i++) {
        *ptr = write_data[i];
    }

    // Synchronize before reads
    synch_barrier();

    // Read back and print results
    printf("Core %d: Reading %d words...\n", core_id, NUM_WORDS);
    for (int i = 0; i < NUM_WORDS; i++) {
        uint32_t cycles = 0;
        uint32_t read_val = *ptr;
        while (read_val == 0 && cycles < TIMEOUT_CYCLES) {
            read_val = *ptr;
            cycles++;
        }
        if (cycles >= TIMEOUT_CYCLES) {
            printf("Core %d: ERROR: Read timeout at word %d\n", core_id, i);
            return -1;
        }
        read_data[i] = read_val;
        printf("Core %d: Read word %d = 0x%08X\n", core_id, i, read_data[i]);
    }

    // Synchronize all cores before exiting
    synch_barrier();

    printf("Core %d: Test complete.\n", core_id);
    return 0;
}
*/

#include <stdint.h>
#include "pulp.h"

#define IPR_ADDR_BASE 0x19000000
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

    // Synchronize all cores
    synch_barrier();

    volatile uint32_t *ptr = (volatile uint32_t *)(IPR_ADDR_BASE + core_id * 4);
    uint32_t write_data[NUM_WORDS];
    uint32_t read_data[NUM_WORDS];

    // Prepare unique data
    for (int i = 0; i < NUM_WORDS; i++) {
        write_data[i] = 0xDEAD0000 | (core_id << 8) | i;
    }

    // 🚀 Pure burst write: 40 words, no prints, no stalls
    for (int i = 0; i < NUM_WORDS; i++) {
        *ptr = write_data[i];
    }

    // Barrier to ensure write completion
    synch_barrier();

    // 🚀 Pure burst read: 40 words, no prints, no stalls
    for (int i = 0; i < NUM_WORDS; i++) {
        read_data[i] = *ptr;
    }

    // Final barrier to synchronize all cores
    synch_barrier();

    return 0;
}


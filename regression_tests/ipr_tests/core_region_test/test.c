#include <stdio.h>
#include <stdint.h>
#include "pulp.h"

#define IPR_ADDR_BASE 0x19000000
#define TIMEOUT_CYCLES 1000000
#define FIFO_DEPTH 1

// Read RISC-V cycle counter
static inline uint32_t get_cycles() {
    uint32_t cycles;
    asm volatile("csrr %0, cycle" : "=r"(cycles));
    return cycles;
}

int main() {
    // Run only on cluster 0
    if (rt_cluster_id() != 0) {
        //printf("Cluster %d: Forwarding to cluster 0\n", rt_cluster_id());
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();



    //printf("Core %d: Booted, cluster_id=%d, num_cores=%d\n", core_id, rt_cluster_id(), num_cores);

    // Barrier 1
    //printf("Core %d: Reaching first barrier\n", core_id);
    synch_barrier();

    // Dummy write to own IPR
    volatile uint32_t *ptr = (volatile uint32_t *)(IPR_ADDR_BASE + core_id);
    uint32_t write_val = 0xDEADBEE0 + core_id;
    *ptr = write_val;

    // Barrier 2
   // printf("Core %d: Reaching second barrier\n", core_id);
    synch_barrier();

    // Measure cycles to read 50 words from FIFO
    //printf("Core %d: Starting FIFO read loop\n", core_id);

    volatile uint32_t *fifo_ptr = (volatile uint32_t *)IPR_ADDR_BASE;
    uint32_t data;
    uint32_t start = get_cycles();

    for (int i = 0; i < FIFO_DEPTH; ++i) {
        data = *fifo_ptr;
        asm volatile("" ::: "memory"); // prevent optimization
    }

    uint32_t end = get_cycles();
    uint32_t delta = end - start;

    //printf("Core %d: Finished reading %d words in %u cycles (avg %u cycles/read)\n",
           //core_id, FIFO_DEPTH, delta, delta / FIFO_DEPTH);

    // Barrier 3
    printf("Core %d: Reaching final barrier\n", core_id);
    synch_barrier();

    return 0;
}


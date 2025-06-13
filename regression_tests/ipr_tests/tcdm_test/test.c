#include <stdio.h>
#include <stdint.h>
#include "pulp.h"

#define L2_BASE     0x1C000000
#define WORD_COUNT  50
#define CORE_OFFSET 0x100      // Offset per core to avoid conflict

// Read RISC-V cycle counter
static inline uint32_t get_cycles() {
    uint32_t val;
    asm volatile("csrr %0, cycle" : "=r"(val));
    return val;
}

int main() {
    // Ensure we're on cluster 0
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();

    // Barrier: all cores synchronized
    synch_barrier();

    // Each core reads from its own region in L2
    volatile uint32_t *l2_ptr = (volatile uint32_t *)(L2_BASE + CORE_OFFSET * core_id);

    uint32_t data;
    uint32_t start = get_cycles();

    for (int i = 0; i < WORD_COUNT; i++) {
        data = l2_ptr[i];
        asm volatile("" ::: "memory"); // prevent optimization
    }

    uint32_t end = get_cycles();
    uint32_t total_cycles = end - start;

    // Print result
    printf("Core %d: L2 read of %d words took %u cycles (avg %u cycles/word)\n",
           core_id, WORD_COUNT, total_cycles, total_cycles / WORD_COUNT);

    // Final barrier: all cores done
    synch_barrier();

    return 0;
}


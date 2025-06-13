#include <stdint.h>
#include "pulp.h"

#define IPR_EAST_ADDR  0x19000020
#define IPR_WEST_ADDR  0x19000030
#define FIFO_DEPTH     8
#define TOTAL_WRITES   16

int main() {
    if (rt_cluster_id() != 0) {
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();

    if (num_cores < 2) {
        return -1;
    }

    synch_barrier();

    if (core_id == 1) {
        // Core 1 writes to Core 0's west (Core 1 uses EAST IPR)
        volatile uint32_t *ipr_write = (volatile uint32_t *) IPR_EAST_ADDR;
        int written = 0;

        for (int written = 0; written < TOTAL_WRITES; written++) {
            uint32_t data = 0xAB000000 | written;
            *ipr_write = data;
        }
    }

    else if (core_id == 0) {
        // Core 0 reads from EAST IPR
        volatile uint32_t *ipr_read = (volatile uint32_t *) IPR_WEST_ADDR;
        uint32_t read_data[TOTAL_WRITES];

        // Delay to allow Core 1 to reach write limit
        for (volatile int d = 0; d < 100; d++);

        for (int i = 0; i < TOTAL_WRITES; i++) {
            read_data[i] = *ipr_read;
            uint32_t expected = 0xAB000000 | i;
            if (read_data[i] != expected) {
                printf("[Core 0] ERROR at %d: Got 0x%08x, Expected 0x%08x\n", i, read_data[i], expected);
            } else {
                printf("[Core 0] OK at %d: 0x%08x\n", i, read_data[i]);
            }

            // Add delay between reads to simulate real processing
            for (volatile int delay = 0; delay < 100; delay++);
        }
    }

    synch_barrier();
    return 0;
}



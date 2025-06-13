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

    if (core_id == 0) {
        // Core 0: read from WEST IPR without checking empty
        volatile uint32_t *ipr_read = (volatile uint32_t *) IPR_WEST_ADDR;
        uint32_t read_data[TOTAL_WRITES];

        for (int i = 0; i < TOTAL_WRITES; i++) {
            // Read without checking empty — will stall if FIFO is empty
            read_data[i] = *ipr_read;
/*
            uint32_t expected = 0xAB000000 | i;
            if (read_data[i] != expected) {
                printf("[Core 0] ERROR at %d: Got 0x%08x, Expected 0x%08x\n",
                       i, read_data[i], expected);
            } else {
                printf("[Core 0] OK at %d: 0x%08x\n", i, read_data[i]);
            }
*/
            // Optional: small delay to simulate core doing some work
           // for (volatile int delay = 0; delay < 100; delay++);
        }
    }

    else if (core_id == 1) {
        // Core 1: write to EAST IPR after short delay
        volatile uint32_t *ipr_write = (volatile uint32_t *) IPR_EAST_ADDR;

        // Add delay to ensure Core 0 tries to read before FIFO has data
        for (volatile int d = 0; d < 200; d++);

        for (int written = 0; written < TOTAL_WRITES; written++) {
            uint32_t data = 0xAB000000 | written;
            *ipr_write = data;
            //printf("[Core 1] Wrote 0x%08x\n", data);
        }
    }

    synch_barrier();
    return 0;
}


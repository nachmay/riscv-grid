/*
#include <stdint.h>
#include "pulp.h"

#define IPR_EAST_ADDR  0x19000020
#define IPR_WEST_ADDR  0x19000030

#define IPR_DATA   0x0
#define IPR_FULL   0x4
#define IPR_EMPTY  0x8

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
        // Core 1 writes to Core 0 (via EAST IPR)
        volatile uint32_t *ipr_write = (volatile uint32_t *)(IPR_EAST_ADDR + IPR_DATA);
        int written = 0;

        for (int written = 0; written < TOTAL_WRITES; written++) {
            uint32_t data = 0xAB000000 | written;
            *ipr_write = data;
        }
    }

    else if (core_id == 0) {
        // Core 0 reads from WEST IPR
        volatile uint32_t *ipr_read = (volatile uint32_t *)(IPR_WEST_ADDR + IPR_DATA);
        volatile uint32_t *ipr_empty = (volatile uint32_t *)(IPR_WEST_ADDR + IPR_EMPTY);
        uint32_t read_data[TOTAL_WRITES];
        int received = 0;

        while ((*ipr_empty & 0x1) == 1) {
            // Wait until LSB of empty register is 1 (FIFO not empty)
            //while ((*ipr_empty & 0x1) == 1);

            // Now FIFO has data, read it
            read_data[received] = *ipr_read;
*/
/*
            uint32_t expected = 0xAB000000 | received;
            if (read_data[received] != expected) {
                printf("[Core 0] ERROR at %d: Got 0x%08x, Expected 0x%08x\n",
                       received, read_data[received], expected);
            } else {
                printf("[Core 0] OK at %d: 0x%08x\n", received, read_data[received]);
            }*/
/*
            received++;
        }




    }

    synch_barrier();
    return 0;
}
*/

#include <stdint.h>
#include "pulp.h"

#define IPR_EAST_ADDR  0x19000020
#define IPR_WEST_ADDR  0x19000030

#define IPR_DATA   0x0
#define IPR_FULL   0x4
#define IPR_EMPTY  0x8

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
        // Core 1 writes to Core 0 (via EAST IPR)
        volatile uint32_t *ipr_write = (volatile uint32_t *)(IPR_EAST_ADDR + IPR_DATA);

        // First, send how many words we're going to write
        *ipr_write = TOTAL_WRITES;

        for (int written = 0; written < TOTAL_WRITES; written++) {
            uint32_t data = 0xAB000000 | written;
            *ipr_write = data;
        }
    }

    else if (core_id == 0) {
        // Core 0 reads from WEST IPR
        volatile uint32_t *ipr_read = (volatile uint32_t *)(IPR_WEST_ADDR + IPR_DATA);
        volatile uint32_t *ipr_empty = (volatile uint32_t *)(IPR_WEST_ADDR + IPR_EMPTY);

        // Wait for the header (number of words)
        while ((*ipr_empty & 0x1) == 1);  // Wait until FIFO is not empty
        uint32_t num_words = *ipr_read;

        uint32_t read_data[num_words];  // Generous buffer
        for (int i = 0; i < num_words; i++) {
            //while ((*ipr_empty & 0x1) == 1);  // Wait for each data word
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
        }
    }

    synch_barrier();
    return 0;
}

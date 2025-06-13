#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_ADDR 0x19000000
#define IPR_SOUTH_ADDR 0x19000004

#define NUM_WORDS_LIST_LEN 7
const int num_words_list[NUM_WORDS_LIST_LEN] = {
    32, 64, 128, 256, 512, 1024, 2048
};

#define MAX_NUM_WORDS 4096  // largest supported buffer

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();
    if (num_cores != 4)
        return -1;

    for (int iter = 0; iter < NUM_WORDS_LIST_LEN; iter++) {
        int NUM_WORDS = num_words_list[iter];

        if (core_id == 0)
            printf("=== Iteration %d: %d words ===\n", iter, NUM_WORDS);

        synch_barrier();  // Sync all cores
        perf_begin();

        // === Core 0 writes ===
        if (core_id == 0) {
            volatile uint32_t *write_ptr = (volatile uint32_t *)IPR_NORTH_ADDR;
            for (int i = 0; i < NUM_WORDS; i++) {
                uint32_t value = 0xDEAD0000 | (core_id << 8) | i;
                *write_ptr = value;
            }
        }

        synch_barrier();  // Wait for writer to finish

        // === Core 2 reads ===
        if (core_id == 2) {
            volatile uint32_t *read_ptr = (volatile uint32_t *)IPR_SOUTH_ADDR;
            uint32_t read_data[MAX_NUM_WORDS];
            for (int i = 0; i < NUM_WORDS; i++) {
                read_data[i] = *read_ptr;
            }

            // Optional: verify or print
            /*
            for (int i = 0; i < NUM_WORDS; i++) {
                printf("Core 2 read: 0x%08x\n", read_data[i]);
            }
            */
        }

        synch_barrier();  // Final sync
        perf_end();
    }

    return 0;
}


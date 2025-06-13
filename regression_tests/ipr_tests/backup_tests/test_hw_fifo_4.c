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
    // Run only on cluster 0
    if (rt_cluster_id() != 0) {
        return bench_cluster_forward(0);
    }

    int core_id = get_core_id();
    int num_cores = get_core_num();

    if (num_cores != 4) {
        return -1;
    }

    for (int iter = 0; iter < NUM_WORDS_LIST_LEN; iter++) {
        int NUM_WORDS = num_words_list[iter];

        if (core_id == 0)
            printf("=== Iteration %d: %d words ===\n", iter, NUM_WORDS);

        // === Barrier sync before test
        synch_barrier();
        perf_begin();

        // === Write to north IPR
        volatile uint32_t *write_ptr = (volatile uint32_t *)IPR_NORTH_ADDR;
        uint32_t write_data[MAX_NUM_WORDS];

        for (int i = 0; i < NUM_WORDS; i++) {
            write_data[i] = 0xDEAD0000 | (core_id << 8) | i;
            *write_ptr = write_data[i];
        }

        // === Ensure all writes are finished
        synch_barrier();

        // === Read from south IPR
        volatile uint32_t *read_ptr = (volatile uint32_t *)IPR_SOUTH_ADDR;
        uint32_t read_data[MAX_NUM_WORDS];

        for (int i = 0; i < NUM_WORDS; i++) {
            read_data[i] = *read_ptr;
        }

        // === Final sync and end performance counter
        synch_barrier();
        perf_end();

        // Optional debug
        /*
        for (int i = 0; i < NUM_WORDS; i++) {
            printf("Core %d read: 0x%08x\n", core_id, read_data[i]);
        }
        */
    }

    return 0;
}


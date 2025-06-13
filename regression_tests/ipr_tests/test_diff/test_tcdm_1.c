#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define NUM_WORDS_LIST_LEN 7
const int num_words_list[NUM_WORDS_LIST_LEN] = {
    32, 64, 128, 256, 512, 1024, 2048
};

#define NUM_CORES 4
#define MAX_NUM_WORDS 2048
#define FIFO_SIZE_BYTES (MAX_NUM_WORDS * sizeof(uint32_t))
#define BASE_TCDM 0x10008000  // Avoid stack collision

// Pointers into TCDM
volatile uint32_t* fifo_ptrs[NUM_CORES] = {
    (uint32_t*)(BASE_TCDM + 0 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 1 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 2 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 3 * FIFO_SIZE_BYTES)
};

volatile int* write_ptrs = (int*)(BASE_TCDM + 4 * FIFO_SIZE_BYTES); // after FIFOs
volatile int* read_ptrs  = (int*)(BASE_TCDM + 4 * FIFO_SIZE_BYTES + NUM_CORES * sizeof(int));

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    if (get_core_num() != NUM_CORES)
        return -1;

    for (int iter = 0; iter < NUM_WORDS_LIST_LEN; iter++) {
        int NUM_WORDS = num_words_list[iter];
        if (core_id == 0)
            printf("=== Iteration %d: %d words ===\n", iter, NUM_WORDS);

        // Clear read/write pointers
        if (core_id == 0 || core_id == 2) {
            write_ptrs[2] = 0; // only fifo[2] is used
            read_ptrs[2] = 0;
        }

        synch_barrier();
        perf_begin();

        if (core_id == 0) {
            // Core 0 writes to FIFO of core 2
            volatile uint32_t* target_fifo = fifo_ptrs[2];
            for (int i = 0; i < NUM_WORDS; i++) {
                uint32_t value = 0xDEAD0000 | (core_id << 8) | i;
                target_fifo[i] = value;
            }
            write_ptrs[2] = NUM_WORDS;
        }

        synch_barrier();

        if (core_id == 2) {
            // Core 2 reads from its own FIFO
            volatile uint32_t* my_fifo = fifo_ptrs[2];
            for (int i = 0; i < NUM_WORDS; i++) {
                //while (write_ptrs[2] <= i); // spin wait if needed
                uint32_t val = my_fifo[i];
                //read_ptrs[2]++;
            }
            read_ptrs[i] = NUM_words;
        }

        synch_barrier();
        perf_end();
    }

    return 0;
}


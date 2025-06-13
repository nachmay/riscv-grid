/*
#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"


#define NUM_WORDS 32
#define NUM_CORES 4
#define FIFO_SIZE_BYTES (NUM_WORDS * sizeof(uint32_t))
#define BASE_TCDM 0x10008000  // You may shift this if you need more stack space

// Pointers into TCDM
volatile uint32_t* fifo_ptrs[NUM_CORES] = {
    (uint32_t*)(BASE_TCDM + 0 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 1 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 2 * FIFO_SIZE_BYTES),
    (uint32_t*)(BASE_TCDM + 3 * FIFO_SIZE_BYTES)
};

volatile int* write_ptrs = (int*)(BASE_TCDM + 4 * FIFO_SIZE_BYTES); // space after 4 FIFOs
volatile int* read_ptrs  = (int*)(BASE_TCDM + 4 * FIFO_SIZE_BYTES + NUM_CORES * sizeof(int));

int fifo_read_from(int core_id) {
    switch (core_id) {
        case 0: return 2;
        case 1: return 3;
        case 2: return 0;
        case 3: return 1;
        default: return -1;
    }
}

int fifo_write_to(int core_id) {
    return core_id;
}

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();

    if (get_core_num() != NUM_CORES)
        return -1;

    synch_barrier();
    //perf_begin();

    int wfifo = fifo_write_to(core_id);
    volatile uint32_t* my_fifo = fifo_ptrs[wfifo];

    for (int i = 0; i < NUM_WORDS; i++) {
        uint32_t value = 0xDEAD0000 | (core_id << 12) | i;
        my_fifo[i] = value;
        //write_ptrs[wfifo]++;
    }
    // Update once with total words
    write_ptrs[wfifo] = NUM_WORDS;

    synch_barrier();

    int rfifo = fifo_read_from(core_id);
    volatile uint32_t* target_fifo = fifo_ptrs[rfifo];
    uint32_t read_data[NUM_WORDS];

    for (int i = 0; i < NUM_WORDS; i++) {
        while (write_ptrs[rfifo] <= i); // spin wait
        read_data[i] = target_fifo[i];
        read_ptrs[rfifo]++;
    }

    synch_barrier();
    //perf_end();

    return 0;
}

*/


#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define NUM_WORDS_LIST_LEN 1
const int num_words_list[NUM_WORDS_LIST_LEN] = {
    2048
};
/*
#define NUM_WORDS_LIST_LEN 7
const int num_words_list[NUM_WORDS_LIST_LEN] = {
    32, 64, 128, 256, 512, 1024, 2048
};
*/
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

int fifo_read_from(int core_id) {
    return core_id;

}

int fifo_write_to(int core_id) {
    switch (core_id) {
        case 0: return 2;
        case 1: return 3;
        case 2: return 0;
        case 3: return 1;
        default: return -1;
    }
}

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

        // Clear pointers before run
        if (core_id < NUM_CORES) {
            write_ptrs[core_id] = 0;
            read_ptrs[core_id] = 0;
        }
        
        // Read from mapped FIFO
        int rfifo = fifo_read_from(core_id);

        // Write to local FIFO
        int wfifo = fifo_write_to(core_id);

        synch_barrier();
        perf_begin();

        volatile uint32_t* my_fifo = fifo_ptrs[wfifo];

        for (int i = 0; i < NUM_WORDS; i++) {
            my_fifo[i]  = 0xDEAD0000 | (core_id << 8) | i;
        }
        //write_ptrs[wfifo] = NUM_WORDS;

        synch_barrier();

        volatile uint32_t* target_fifo = fifo_ptrs[rfifo];
        uint32_t read_data[MAX_NUM_WORDS];

        for (int i = 0; i < NUM_WORDS; i++) {
            //while (write_ptrs[rfifo] <= i); // spin wait
            read_data[i]  = target_fifo[i];
            //read_ptrs[rfifo]++;
        }
        //read_ptrs[rfifo] = NUM_WORDS;
        synch_barrier();
        perf_end();

        // Optional validation
        /*
        for (int i = 0; i < NUM_WORDS; i++) {
            printf("Core %d read: 0x%08x\n", core_id, read_data[i]);
        }
        */

    }

    return 0;
}


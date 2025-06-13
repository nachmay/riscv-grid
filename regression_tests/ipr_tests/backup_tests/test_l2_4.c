#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define NUM_WORDS 40
#define NUM_CORES 4

// Shared FIFOs - Each core owns one
volatile uint32_t fifos[NUM_CORES][NUM_WORDS];

// Shared write pointers (one per FIFO)
volatile int write_ptr[NUM_CORES] = {0};

// Shared read pointers (one per FIFO)
volatile int read_ptr[NUM_CORES] = {0};

// Return the FIFO ID you read from
int fifo_read_from(int core_id) {
    switch (core_id) {
        case 0: return 2;
        case 1: return 3;
        case 2: return 0;
        case 3: return 1;
        default: return -1;
    }
}

// Return the FIFO ID you write to
int fifo_write_to(int core_id) {
    return core_id;
}

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();

    if (get_core_num() != NUM_CORES)
        return -1;

    // === Step 1: Barrier to sync all cores
    synch_barrier();
    perf_begin();
    // === Step 2: Each core writes to its own FIFO
    int wfifo = fifo_write_to(core_id);
    for (int i = 0; i < NUM_WORDS; i++) {
        uint32_t value = 0xDEAD0000 | (core_id << 8) | i;
        fifos[wfifo][i] = value;
        write_ptr[wfifo]++; // simulate FIFO advancing
    }

    // === Step 3: Barrier to ensure all writes are complete
    synch_barrier();

    // === Step 4: Each core reads from another core’s FIFO
    int rfifo = fifo_read_from(core_id);
    uint32_t read_data[NUM_WORDS];

    for (int i = 0; i < NUM_WORDS; i++) {
        // Simple polling mechanism (in real use you'd use atomic flags or semaphores)
        while (write_ptr[rfifo] <= i); // spin until data is written

        read_data[i] = fifos[rfifo][i];
        read_ptr[rfifo]++;
    }

    // === Step 5: Final barrier
    synch_barrier();
    perf_end();
    // Optional: Print read results per core
    //for (int i = 0; i < NUM_WORDS; i++) {
      //  printf("Core %d read: 0x%08x\n", core_id, read_data[i]);
    //}

    return 0;
}


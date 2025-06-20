
#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define NUM_WORDS_STACK  32
#define NUM_WORDS 128
#define NUM_ITER 4
#define NUM_ITER_INFINIT 50

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();
    if (num_cores != 4)
        return -1;

    // Prepare data to write (in core 0)
    uint32_t values_to_write[NUM_WORDS_STACK];

    if (core_id == 1) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    volatile uint32_t *enq_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *deq_ptr = (volatile uint32_t *)IPR_WEST_BASE;

    // Sync all cores before the test
    synch_barrier();
    perf_begin();


/*
    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int i = 0; i < NUM_WORDS; i++) {
            //*enq_ptr = values_to_write[i];
            *enq_ptr = 0xDEAD0000 | (core_id << 8) | i;
        }
    }
*/
    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
	for (int infinite_iter = 0; infinite_iter < NUM_ITER_INFINIT; infinite_iter++) {
	    *enq_ptr = values_to_write[0];
	    *enq_ptr = values_to_write[1];
	    *enq_ptr = values_to_write[2];
	    *enq_ptr = values_to_write[3];
	    *enq_ptr = values_to_write[4];
	    *enq_ptr = values_to_write[5];
	    *enq_ptr = values_to_write[6];
	    *enq_ptr = values_to_write[7];
	    *enq_ptr = values_to_write[8];
	    *enq_ptr = values_to_write[9];
	    *enq_ptr = values_to_write[10];
	    *enq_ptr = values_to_write[11];
	    *enq_ptr = values_to_write[12];
	    *enq_ptr = values_to_write[13];
	    *enq_ptr = values_to_write[14];
	    *enq_ptr = values_to_write[15];
	    *enq_ptr = values_to_write[16];
	    *enq_ptr = values_to_write[17];
	    *enq_ptr = values_to_write[18];
	    *enq_ptr = values_to_write[19];
	    *enq_ptr = values_to_write[20];
	    *enq_ptr = values_to_write[21];
	    *enq_ptr = values_to_write[22];
	    *enq_ptr = values_to_write[23];
	    *enq_ptr = values_to_write[24];
	    *enq_ptr = values_to_write[25];
	    *enq_ptr = values_to_write[26];
	    *enq_ptr = values_to_write[27];
	    *enq_ptr = values_to_write[28];
	    *enq_ptr = values_to_write[29];
	    *enq_ptr = values_to_write[30];
	    *enq_ptr = values_to_write[31];
	}
    }

    if (core_id == 0) {
        // Reader: dequeue via memory-mapped IPR_WEST_ADDR
	for (int infinite_iter = 0; infinite_iter < NUM_ITER_INFINIT; infinite_iter++) {
    	    uint32_t val_0 = *deq_ptr;
	    uint32_t val_1 = *deq_ptr;
	    uint32_t val_2 = *deq_ptr;
	    uint32_t val_3 = *deq_ptr;
	    uint32_t val_4 = *deq_ptr;
	    uint32_t val_5 = *deq_ptr;
	    uint32_t val_6 = *deq_ptr;
	    uint32_t val_7 = *deq_ptr;
	    uint32_t val_8 = *deq_ptr;
	    uint32_t val_9 = *deq_ptr;
	    uint32_t val_10 = *deq_ptr;
	    uint32_t val_11 = *deq_ptr;
	    uint32_t val_12 = *deq_ptr;
	    uint32_t val_13 = *deq_ptr;
	    uint32_t val_14 = *deq_ptr;
	    uint32_t val_15 = *deq_ptr;
	    uint32_t val_16 = *deq_ptr;
	    uint32_t val_17 = *deq_ptr;
	    uint32_t val_18 = *deq_ptr;
	    uint32_t val_19 = *deq_ptr;
	    uint32_t val_20 = *deq_ptr;
	    uint32_t val_21 = *deq_ptr;
	    uint32_t val_22 = *deq_ptr;
	    uint32_t val_23 = *deq_ptr;
	    uint32_t val_24 = *deq_ptr;
	    uint32_t val_25 = *deq_ptr;
	    uint32_t val_26 = *deq_ptr;
	    uint32_t val_27 = *deq_ptr;
	    uint32_t val_28 = *deq_ptr;
	    uint32_t val_29 = *deq_ptr;
	    uint32_t val_30 = *deq_ptr;
	    uint32_t val_31 = *deq_ptr;
	}
    }

    synch_barrier();
    perf_end();

    return 0;
}




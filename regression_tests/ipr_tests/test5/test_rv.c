
#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define NUM_WORDS_STACK 32
#define NUM_WORDS 32
#define NUM_ITER 50


int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    int num_cores = get_core_num();
    if (num_cores != 4)
        return -1;

    // Prepare data to write (in core 0)
    uint32_t values_to_write_0[NUM_WORDS_STACK];
    uint32_t values_to_write_1[NUM_WORDS_STACK];
    uint32_t values_to_write_2[NUM_WORDS_STACK];
    uint32_t values_to_write_3[NUM_WORDS_STACK];


    if (core_id == 0) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_0[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 1) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_1[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 2) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_2[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    if (core_id == 3) {
        for (int i = 0; i < NUM_WORDS_STACK; i++) {
            values_to_write_3[i] = 0xDEAD0000 | (core_id << 8) | i;
        }
    }

    volatile uint32_t *enq_north_ptr = (volatile uint32_t *)IPR_NORTH_BASE;
    volatile uint32_t *enq_south_ptr = (volatile uint32_t *)IPR_SOUTH_BASE;
    volatile uint32_t *enq_east_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *enq_west_ptr = (volatile uint32_t *)IPR_WEST_BASE;

    volatile uint32_t *deq_north_ptr = (volatile uint32_t *)IPR_NORTH_BASE;
    volatile uint32_t *deq_south_ptr = (volatile uint32_t *)IPR_SOUTH_BASE;
    volatile uint32_t *deq_east_ptr = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *deq_west_ptr = (volatile uint32_t *)IPR_WEST_BASE;


    // Sync all cores before the test
    synch_barrier();
    perf_begin();


    if (core_id == 0) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_west_ptr  = values_to_write_0[0];
            *enq_south_ptr  = values_to_write_0[0];
            uint32_t val_0_0 = *deq_west_ptr;
            uint32_t val_1_0 = *deq_south_ptr;


            *enq_west_ptr  = values_to_write_0[1];
            *enq_south_ptr  = values_to_write_0[1];
            uint32_t val_0_1 = *deq_west_ptr;
            uint32_t val_1_1 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[2];
            *enq_south_ptr  = values_to_write_0[2];
            uint32_t val_0_2 = *deq_west_ptr;
            uint32_t val_1_2 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[3];
            *enq_south_ptr  = values_to_write_0[3];
            uint32_t val_0_3 = *deq_west_ptr;
            uint32_t val_1_3 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[4];
            *enq_south_ptr  = values_to_write_0[4];
            uint32_t val_0_4 = *deq_west_ptr;
            uint32_t val_1_4 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[5];
            *enq_south_ptr  = values_to_write_0[5];
            uint32_t val_0_5 = *deq_west_ptr;
            uint32_t val_1_5 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[6];
            *enq_south_ptr  = values_to_write_0[6];
            uint32_t val_0_6 = *deq_west_ptr;
            uint32_t val_1_6 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[7];
            *enq_south_ptr  = values_to_write_0[7];
            uint32_t val_0_7 = *deq_west_ptr;
            uint32_t val_1_7 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[8];
            *enq_south_ptr  = values_to_write_0[8];
            uint32_t val_0_8 = *deq_west_ptr;
            uint32_t val_1_8 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[9];
            *enq_south_ptr  = values_to_write_0[9];
            uint32_t val_0_9 = *deq_west_ptr;
            uint32_t val_1_9 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[10];
            *enq_south_ptr  = values_to_write_0[10];
            uint32_t val_0_10 = *deq_west_ptr;
            uint32_t val_1_10 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[11];
            *enq_south_ptr  = values_to_write_0[11];
            uint32_t val_0_11 = *deq_west_ptr;
            uint32_t val_1_11 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[12];
            *enq_south_ptr  = values_to_write_0[12];
            uint32_t val_0_12 = *deq_west_ptr;
            uint32_t val_1_12 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[13];
            *enq_south_ptr  = values_to_write_0[13];
            uint32_t val_0_13 = *deq_west_ptr;
            uint32_t val_1_13 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[14];
            *enq_south_ptr  = values_to_write_0[14];
            uint32_t val_0_14 = *deq_west_ptr;
            uint32_t val_1_14 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[15];
            *enq_south_ptr  = values_to_write_0[15];
            uint32_t val_0_15 = *deq_west_ptr;
            uint32_t val_1_15 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[16];
            *enq_south_ptr  = values_to_write_0[16];
            uint32_t val_0_16 = *deq_west_ptr;
            uint32_t val_1_16 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[17];
            *enq_south_ptr  = values_to_write_0[17];
            uint32_t val_0_17 = *deq_west_ptr;
            uint32_t val_1_17 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[18];
            *enq_south_ptr  = values_to_write_0[18];
            uint32_t val_0_18 = *deq_west_ptr;
            uint32_t val_1_18 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[19];
            *enq_south_ptr  = values_to_write_0[19];
            uint32_t val_0_19 = *deq_west_ptr;
            uint32_t val_1_19 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[20];
            *enq_south_ptr  = values_to_write_0[20];
            uint32_t val_0_20 = *deq_west_ptr;
            uint32_t val_1_20 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[21];
            *enq_south_ptr  = values_to_write_0[21];
            uint32_t val_0_21 = *deq_west_ptr;
            uint32_t val_1_21 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[22];
            *enq_south_ptr  = values_to_write_0[22];
            uint32_t val_0_22 = *deq_west_ptr;
            uint32_t val_1_22 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[23];
            *enq_south_ptr  = values_to_write_0[23];
            uint32_t val_0_23 = *deq_west_ptr;
            uint32_t val_1_23 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[24];
            *enq_south_ptr  = values_to_write_0[24];
            uint32_t val_0_24 = *deq_west_ptr;
            uint32_t val_1_24 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[25];
            *enq_south_ptr  = values_to_write_0[25];
            uint32_t val_0_25 = *deq_west_ptr;
            uint32_t val_1_25 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[26];
            *enq_south_ptr  = values_to_write_0[26];
            uint32_t val_0_26 = *deq_west_ptr;
            uint32_t val_1_26 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[27];
            *enq_south_ptr  = values_to_write_0[27];
            uint32_t val_0_27 = *deq_west_ptr;
            uint32_t val_1_27 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[28];
            *enq_south_ptr  = values_to_write_0[28];
            uint32_t val_0_28 = *deq_west_ptr;
            uint32_t val_1_28 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[29];
            *enq_south_ptr  = values_to_write_0[29];
            uint32_t val_0_29 = *deq_west_ptr;
            uint32_t val_1_29 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[30];
            *enq_south_ptr  = values_to_write_0[30];
            uint32_t val_0_30 = *deq_west_ptr;
            uint32_t val_1_30 = *deq_south_ptr;

            *enq_west_ptr  = values_to_write_0[31];
            *enq_south_ptr  = values_to_write_0[31];
            uint32_t val_0_31 = *deq_west_ptr;
            uint32_t val_1_31 = *deq_south_ptr;
        }
    }


    if (core_id == 1) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_east_ptr  = values_to_write_1[0];
            *enq_south_ptr  = values_to_write_1[0];
            uint32_t val_0_0 = *deq_east_ptr;
            uint32_t val_1_0 = *deq_south_ptr;


            *enq_east_ptr  = values_to_write_1[1];
            *enq_south_ptr  = values_to_write_1[1];
            uint32_t val_0_1 = *deq_east_ptr;
            uint32_t val_1_1 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[2];
            *enq_south_ptr  = values_to_write_1[2];
            uint32_t val_0_2 = *deq_east_ptr;
            uint32_t val_1_2 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[3];
            *enq_south_ptr  = values_to_write_1[3];
            uint32_t val_0_3 = *deq_east_ptr;
            uint32_t val_1_3 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[4];
            *enq_south_ptr  = values_to_write_1[4];
            uint32_t val_0_4 = *deq_east_ptr;
            uint32_t val_1_4 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[5];
            *enq_south_ptr  = values_to_write_1[5];
            uint32_t val_0_5 = *deq_east_ptr;
            uint32_t val_1_5 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[6];
            *enq_south_ptr  = values_to_write_1[6];
            uint32_t val_0_6 = *deq_east_ptr;
            uint32_t val_1_6 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[7];
            *enq_south_ptr  = values_to_write_1[7];
            uint32_t val_0_7 = *deq_east_ptr;
            uint32_t val_1_7 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[8];
            *enq_south_ptr  = values_to_write_1[8];
            uint32_t val_0_8 = *deq_east_ptr;
            uint32_t val_1_8 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[9];
            *enq_south_ptr  = values_to_write_1[9];
            uint32_t val_0_9 = *deq_east_ptr;
            uint32_t val_1_9 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[10];
            *enq_south_ptr  = values_to_write_1[10];
            uint32_t val_0_10 = *deq_east_ptr;
            uint32_t val_1_10 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[11];
            *enq_south_ptr  = values_to_write_1[11];
            uint32_t val_0_11 = *deq_east_ptr;
            uint32_t val_1_11 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[12];
            *enq_south_ptr  = values_to_write_1[12];
            uint32_t val_0_12 = *deq_east_ptr;
            uint32_t val_1_12 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[13];
            *enq_south_ptr  = values_to_write_1[13];
            uint32_t val_0_13 = *deq_east_ptr;
            uint32_t val_1_13 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[14];
            *enq_south_ptr  = values_to_write_1[14];
            uint32_t val_0_14 = *deq_east_ptr;
            uint32_t val_1_14 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[15];
            *enq_south_ptr  = values_to_write_1[15];
            uint32_t val_0_15 = *deq_east_ptr;
            uint32_t val_1_15 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[16];
            *enq_south_ptr  = values_to_write_1[16];
            uint32_t val_0_16 = *deq_east_ptr;
            uint32_t val_1_16 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[17];
            *enq_south_ptr  = values_to_write_1[17];
            uint32_t val_0_17 = *deq_east_ptr;
            uint32_t val_1_17 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[18];
            *enq_south_ptr  = values_to_write_1[18];
            uint32_t val_0_18 = *deq_east_ptr;
            uint32_t val_1_18 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[19];
            *enq_south_ptr  = values_to_write_1[19];
            uint32_t val_0_19 = *deq_east_ptr;
            uint32_t val_1_19 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[20];
            *enq_south_ptr  = values_to_write_1[20];
            uint32_t val_0_20 = *deq_east_ptr;
            uint32_t val_1_20 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[21];
            *enq_south_ptr  = values_to_write_1[21];
            uint32_t val_0_21 = *deq_east_ptr;
            uint32_t val_1_21 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[22];
            *enq_south_ptr  = values_to_write_1[22];
            uint32_t val_0_22 = *deq_east_ptr;
            uint32_t val_1_22 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[23];
            *enq_south_ptr  = values_to_write_1[23];
            uint32_t val_0_23 = *deq_east_ptr;
            uint32_t val_1_23 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[24];
            *enq_south_ptr  = values_to_write_1[24];
            uint32_t val_0_24 = *deq_east_ptr;
            uint32_t val_1_24 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[25];
            *enq_south_ptr  = values_to_write_1[25];
            uint32_t val_0_25 = *deq_east_ptr;
            uint32_t val_1_25 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[26];
            *enq_south_ptr  = values_to_write_1[26];
            uint32_t val_0_26 = *deq_east_ptr;
            uint32_t val_1_26 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[27];
            *enq_south_ptr  = values_to_write_1[27];
            uint32_t val_0_27 = *deq_east_ptr;
            uint32_t val_1_27 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[28];
            *enq_south_ptr  = values_to_write_1[28];
            uint32_t val_0_28 = *deq_east_ptr;
            uint32_t val_1_28 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[29];
            *enq_south_ptr  = values_to_write_1[29];
            uint32_t val_0_29 = *deq_east_ptr;
            uint32_t val_1_29 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[30];
            *enq_south_ptr  = values_to_write_1[30];
            uint32_t val_0_30 = *deq_east_ptr;
            uint32_t val_1_30 = *deq_south_ptr;

            *enq_east_ptr  = values_to_write_1[31];
            *enq_south_ptr  = values_to_write_1[31];
            uint32_t val_0_31 = *deq_east_ptr;
            uint32_t val_1_31 = *deq_south_ptr;
        }
    }



    if (core_id == 2) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_west_ptr  = values_to_write_2[0];
            *enq_north_ptr  = values_to_write_2[0];
            uint32_t val_0_0 = *deq_west_ptr;
            uint32_t val_1_0 = *deq_north_ptr;


            *enq_west_ptr  = values_to_write_2[1];
            *enq_north_ptr  = values_to_write_2[1];
            uint32_t val_0_1 = *deq_west_ptr;
            uint32_t val_1_1 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[2];
            *enq_north_ptr  = values_to_write_2[2];
            uint32_t val_0_2 = *deq_west_ptr;
            uint32_t val_1_2 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[3];
            *enq_north_ptr  = values_to_write_2[3];
            uint32_t val_0_3 = *deq_west_ptr;
            uint32_t val_1_3 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[4];
            *enq_north_ptr  = values_to_write_2[4];
            uint32_t val_0_4 = *deq_west_ptr;
            uint32_t val_1_4 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[5];
            *enq_north_ptr  = values_to_write_2[5];
            uint32_t val_0_5 = *deq_west_ptr;
            uint32_t val_1_5 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[6];
            *enq_north_ptr  = values_to_write_2[6];
            uint32_t val_0_6 = *deq_west_ptr;
            uint32_t val_1_6 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[7];
            *enq_north_ptr  = values_to_write_2[7];
            uint32_t val_0_7 = *deq_west_ptr;
            uint32_t val_1_7 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[8];
            *enq_north_ptr  = values_to_write_2[8];
            uint32_t val_0_8 = *deq_west_ptr;
            uint32_t val_1_8 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[9];
            *enq_north_ptr  = values_to_write_2[9];
            uint32_t val_0_9 = *deq_west_ptr;
            uint32_t val_1_9 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[10];
            *enq_north_ptr  = values_to_write_2[10];
            uint32_t val_0_10 = *deq_west_ptr;
            uint32_t val_1_10 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[11];
            *enq_north_ptr  = values_to_write_2[11];
            uint32_t val_0_11 = *deq_west_ptr;
            uint32_t val_1_11 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[12];
            *enq_north_ptr  = values_to_write_2[12];
            uint32_t val_0_12 = *deq_west_ptr;
            uint32_t val_1_12 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[13];
            *enq_north_ptr  = values_to_write_2[13];
            uint32_t val_0_13 = *deq_west_ptr;
            uint32_t val_1_13 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[14];
            *enq_north_ptr  = values_to_write_2[14];
            uint32_t val_0_14 = *deq_west_ptr;
            uint32_t val_1_14 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[15];
            *enq_north_ptr  = values_to_write_2[15];
            uint32_t val_0_15 = *deq_west_ptr;
            uint32_t val_1_15 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[16];
            *enq_north_ptr  = values_to_write_2[16];
            uint32_t val_0_16 = *deq_west_ptr;
            uint32_t val_1_16 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[17];
            *enq_north_ptr  = values_to_write_2[17];
            uint32_t val_0_17 = *deq_west_ptr;
            uint32_t val_1_17 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[18];
            *enq_north_ptr  = values_to_write_2[18];
            uint32_t val_0_18 = *deq_west_ptr;
            uint32_t val_1_18 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[19];
            *enq_north_ptr  = values_to_write_2[19];
            uint32_t val_0_19 = *deq_west_ptr;
            uint32_t val_1_19 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[20];
            *enq_north_ptr  = values_to_write_2[20];
            uint32_t val_0_20 = *deq_west_ptr;
            uint32_t val_1_20 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[21];
            *enq_north_ptr  = values_to_write_2[21];
            uint32_t val_0_21 = *deq_west_ptr;
            uint32_t val_1_21 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[22];
            *enq_north_ptr  = values_to_write_2[22];
            uint32_t val_0_22 = *deq_west_ptr;
            uint32_t val_1_22 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[23];
            *enq_north_ptr  = values_to_write_2[23];
            uint32_t val_0_23 = *deq_west_ptr;
            uint32_t val_1_23 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[24];
            *enq_north_ptr  = values_to_write_2[24];
            uint32_t val_0_24 = *deq_west_ptr;
            uint32_t val_1_24 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[25];
            *enq_north_ptr  = values_to_write_2[25];
            uint32_t val_0_25 = *deq_west_ptr;
            uint32_t val_1_25 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[26];
            *enq_north_ptr  = values_to_write_2[26];
            uint32_t val_0_26 = *deq_west_ptr;
            uint32_t val_1_26 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[27];
            *enq_north_ptr  = values_to_write_2[27];
            uint32_t val_0_27 = *deq_west_ptr;
            uint32_t val_1_27 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[28];
            *enq_north_ptr  = values_to_write_2[28];
            uint32_t val_0_28 = *deq_west_ptr;
            uint32_t val_1_28 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[29];
            *enq_north_ptr  = values_to_write_2[29];
            uint32_t val_0_29 = *deq_west_ptr;
            uint32_t val_1_29 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[30];
            *enq_north_ptr  = values_to_write_2[30];
            uint32_t val_0_30 = *deq_west_ptr;
            uint32_t val_1_30 = *deq_north_ptr;

            *enq_west_ptr  = values_to_write_2[31];
            *enq_north_ptr  = values_to_write_2[31];
            uint32_t val_0_31 = *deq_west_ptr;
            uint32_t val_1_31 = *deq_north_ptr;
        }
    }



    if (core_id == 3) {
        // Writer: enqueue via memory-mapped IPR_EAST_ADDR
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_east_ptr  = values_to_write_3[0];
            *enq_north_ptr  = values_to_write_3[0];
            uint32_t val_0_0 = *deq_east_ptr;
            uint32_t val_1_0 = *deq_north_ptr;


            *enq_east_ptr  = values_to_write_3[1];
            *enq_north_ptr  = values_to_write_3[1];
            uint32_t val_0_1 = *deq_east_ptr;
            uint32_t val_1_1 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[2];
            *enq_north_ptr  = values_to_write_3[2];
            uint32_t val_0_2 = *deq_east_ptr;
            uint32_t val_1_2 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[3];
            *enq_north_ptr  = values_to_write_3[3];
            uint32_t val_0_3 = *deq_east_ptr;
            uint32_t val_1_3 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[4];
            *enq_north_ptr  = values_to_write_3[4];
            uint32_t val_0_4 = *deq_east_ptr;
            uint32_t val_1_4 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[5];
            *enq_north_ptr  = values_to_write_3[5];
            uint32_t val_0_5 = *deq_east_ptr;
            uint32_t val_1_5 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[6];
            *enq_north_ptr  = values_to_write_3[6];
            uint32_t val_0_6 = *deq_east_ptr;
            uint32_t val_1_6 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[7];
            *enq_north_ptr  = values_to_write_3[7];
            uint32_t val_0_7 = *deq_east_ptr;
            uint32_t val_1_7 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[8];
            *enq_north_ptr  = values_to_write_3[8];
            uint32_t val_0_8 = *deq_east_ptr;
            uint32_t val_1_8 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[9];
            *enq_north_ptr  = values_to_write_3[9];
            uint32_t val_0_9 = *deq_east_ptr;
            uint32_t val_1_9 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[10];
            *enq_north_ptr  = values_to_write_3[10];
            uint32_t val_0_10 = *deq_east_ptr;
            uint32_t val_1_10 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[11];
            *enq_north_ptr  = values_to_write_3[11];
            uint32_t val_0_11 = *deq_east_ptr;
            uint32_t val_1_11 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[12];
            *enq_north_ptr  = values_to_write_3[12];
            uint32_t val_0_12 = *deq_east_ptr;
            uint32_t val_1_12 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[13];
            *enq_north_ptr  = values_to_write_3[13];
            uint32_t val_0_13 = *deq_east_ptr;
            uint32_t val_1_13 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[14];
            *enq_north_ptr  = values_to_write_3[14];
            uint32_t val_0_14 = *deq_east_ptr;
            uint32_t val_1_14 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[15];
            *enq_north_ptr  = values_to_write_3[15];
            uint32_t val_0_15 = *deq_east_ptr;
            uint32_t val_1_15 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[16];
            *enq_north_ptr  = values_to_write_3[16];
            uint32_t val_0_16 = *deq_east_ptr;
            uint32_t val_1_16 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[17];
            *enq_north_ptr  = values_to_write_3[17];
            uint32_t val_0_17 = *deq_east_ptr;
            uint32_t val_1_17 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[18];
            *enq_north_ptr  = values_to_write_3[18];
            uint32_t val_0_18 = *deq_east_ptr;
            uint32_t val_1_18 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[19];
            *enq_north_ptr  = values_to_write_3[19];
            uint32_t val_0_19 = *deq_east_ptr;
            uint32_t val_1_19 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[20];
            *enq_north_ptr  = values_to_write_3[20];
            uint32_t val_0_20 = *deq_east_ptr;
            uint32_t val_1_20 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[21];
            *enq_north_ptr  = values_to_write_3[21];
            uint32_t val_0_21 = *deq_east_ptr;
            uint32_t val_1_21 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[22];
            *enq_north_ptr  = values_to_write_3[22];
            uint32_t val_0_22 = *deq_east_ptr;
            uint32_t val_1_22 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[23];
            *enq_north_ptr  = values_to_write_3[23];
            uint32_t val_0_23 = *deq_east_ptr;
            uint32_t val_1_23 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[24];
            *enq_north_ptr  = values_to_write_3[24];
            uint32_t val_0_24 = *deq_east_ptr;
            uint32_t val_1_24 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[25];
            *enq_north_ptr  = values_to_write_3[25];
            uint32_t val_0_25 = *deq_east_ptr;
            uint32_t val_1_25 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[26];
            *enq_north_ptr  = values_to_write_3[26];
            uint32_t val_0_26 = *deq_east_ptr;
            uint32_t val_1_26 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[27];
            *enq_north_ptr  = values_to_write_3[27];
            uint32_t val_0_27 = *deq_east_ptr;
            uint32_t val_1_27 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[28];
            *enq_north_ptr  = values_to_write_3[28];
            uint32_t val_0_28 = *deq_east_ptr;
            uint32_t val_1_28 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[29];
            *enq_north_ptr  = values_to_write_3[29];
            uint32_t val_0_29 = *deq_east_ptr;
            uint32_t val_1_29 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[30];
            *enq_north_ptr  = values_to_write_3[30];
            uint32_t val_0_30 = *deq_east_ptr;
            uint32_t val_1_30 = *deq_north_ptr;

            *enq_east_ptr  = values_to_write_3[31];
            *enq_north_ptr  = values_to_write_3[31];
            uint32_t val_0_31 = *deq_east_ptr;
            uint32_t val_1_31 = *deq_north_ptr;
        }
    }





    synch_barrier();
    perf_end();

    return 0;
}




#include <stdio.h>
#include <stdint.h>
#include "pulp.h"
#include "mlShared.h"

#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define NUM_WORDS_STACK 32
#define NUM_ITER 50

int main() {
    if (rt_cluster_id() != 0)
        return bench_cluster_forward(0);

    int core_id = get_core_id();
    if (get_core_num() != 4)
        return -1;

    uint32_t values_from_core1[NUM_WORDS_STACK];
    uint32_t values_from_core2[NUM_WORDS_STACK];

    if (core_id == 1) {
        for (int i = 0; i < NUM_WORDS_STACK; i++)
            values_from_core1[i] = 0xDEAD0000 | (core_id << 8) | i;
    }

    if (core_id == 2) {
        for (int i = 0; i < NUM_WORDS_STACK; i++)
            values_from_core2[i] = 0xDEAD0000 | (core_id << 8) | i;
    }

    volatile uint32_t *enq_east_ptr  = (volatile uint32_t *)IPR_EAST_BASE;
    volatile uint32_t *enq_north_ptr = (volatile uint32_t *)IPR_NORTH_BASE;
    volatile uint32_t *deq_west_ptr  = (volatile uint32_t *)IPR_WEST_BASE;
    volatile uint32_t *deq_south_ptr = (volatile uint32_t *)IPR_SOUTH_BASE;

    synch_barrier();
    perf_begin();


    if (core_id == 0) {
        for (int iter = 0; iter < NUM_ITER; iter++) {
  	uint32_t s0 = *deq_south_ptr;  uint32_t w0 = *deq_west_ptr;
        uint32_t s1 = *deq_south_ptr;  uint32_t w1 = *deq_west_ptr;
        uint32_t s2 = *deq_south_ptr;  uint32_t w2 = *deq_west_ptr;
        uint32_t s3 = *deq_south_ptr;  uint32_t w3 = *deq_west_ptr;
        uint32_t s4 = *deq_south_ptr;  uint32_t w4 = *deq_west_ptr;
        uint32_t s5 = *deq_south_ptr;  uint32_t w5 = *deq_west_ptr;
        uint32_t s6 = *deq_south_ptr;  uint32_t w6 = *deq_west_ptr;
        uint32_t s7 = *deq_south_ptr;  uint32_t w7 = *deq_west_ptr;
        uint32_t s8 = *deq_south_ptr;  uint32_t w8 = *deq_west_ptr;
        uint32_t s9 = *deq_south_ptr;  uint32_t w9 = *deq_west_ptr;
        uint32_t s10 = *deq_south_ptr; uint32_t w10 = *deq_west_ptr;
        uint32_t s11 = *deq_south_ptr; uint32_t w11 = *deq_west_ptr;
        uint32_t s12 = *deq_south_ptr; uint32_t w12 = *deq_west_ptr;
        uint32_t s13 = *deq_south_ptr; uint32_t w13 = *deq_west_ptr;
        uint32_t s14 = *deq_south_ptr; uint32_t w14 = *deq_west_ptr;
        uint32_t s15 = *deq_south_ptr; uint32_t w15 = *deq_west_ptr;
        uint32_t s16 = *deq_south_ptr; uint32_t w16 = *deq_west_ptr;
        uint32_t s17 = *deq_south_ptr; uint32_t w17 = *deq_west_ptr;
        uint32_t s18 = *deq_south_ptr; uint32_t w18 = *deq_west_ptr;
        uint32_t s19 = *deq_south_ptr; uint32_t w19 = *deq_west_ptr;
        uint32_t s20 = *deq_south_ptr; uint32_t w20 = *deq_west_ptr;
        uint32_t s21 = *deq_south_ptr; uint32_t w21 = *deq_west_ptr;
        uint32_t s22 = *deq_south_ptr; uint32_t w22 = *deq_west_ptr;
        uint32_t s23 = *deq_south_ptr; uint32_t w23 = *deq_west_ptr;
        uint32_t s24 = *deq_south_ptr; uint32_t w24 = *deq_west_ptr;
        uint32_t s25 = *deq_south_ptr; uint32_t w25 = *deq_west_ptr;
        uint32_t s26 = *deq_south_ptr; uint32_t w26 = *deq_west_ptr;
        uint32_t s27 = *deq_south_ptr; uint32_t w27 = *deq_west_ptr;
        uint32_t s28 = *deq_south_ptr; uint32_t w28 = *deq_west_ptr;
        uint32_t s29 = *deq_south_ptr; uint32_t w29 = *deq_west_ptr;
        uint32_t s30 = *deq_south_ptr; uint32_t w30 = *deq_west_ptr;
        uint32_t s31 = *deq_south_ptr; uint32_t w31 = *deq_west_ptr;	
        }
    }

    // Core 1 writes separately
    if (core_id == 1) {
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_east_ptr = values_from_core1[0];  *enq_east_ptr = values_from_core1[1];
            *enq_east_ptr = values_from_core1[2];  *enq_east_ptr = values_from_core1[3];
            *enq_east_ptr = values_from_core1[4];  *enq_east_ptr = values_from_core1[5];
            *enq_east_ptr = values_from_core1[6];  *enq_east_ptr = values_from_core1[7];
            *enq_east_ptr = values_from_core1[8];  *enq_east_ptr = values_from_core1[9];
            *enq_east_ptr = values_from_core1[10]; *enq_east_ptr = values_from_core1[11];
            *enq_east_ptr = values_from_core1[12]; *enq_east_ptr = values_from_core1[13];
            *enq_east_ptr = values_from_core1[14]; *enq_east_ptr = values_from_core1[15];
            *enq_east_ptr = values_from_core1[16]; *enq_east_ptr = values_from_core1[17];
            *enq_east_ptr = values_from_core1[18]; *enq_east_ptr = values_from_core1[19];
            *enq_east_ptr = values_from_core1[20]; *enq_east_ptr = values_from_core1[21];
            *enq_east_ptr = values_from_core1[22]; *enq_east_ptr = values_from_core1[23];
            *enq_east_ptr = values_from_core1[24]; *enq_east_ptr = values_from_core1[25];
            *enq_east_ptr = values_from_core1[26]; *enq_east_ptr = values_from_core1[27];
            *enq_east_ptr = values_from_core1[28]; *enq_east_ptr = values_from_core1[29];
            *enq_east_ptr = values_from_core1[30]; *enq_east_ptr = values_from_core1[31];
        }
    }

    // Core 2 writes separately
    if (core_id == 2) {
        for (int iter = 0; iter < NUM_ITER; iter++) {
            *enq_north_ptr = values_from_core2[0];  *enq_north_ptr = values_from_core2[1];
            *enq_north_ptr = values_from_core2[2];  *enq_north_ptr = values_from_core2[3];
            *enq_north_ptr = values_from_core2[4];  *enq_north_ptr = values_from_core2[5];
            *enq_north_ptr = values_from_core2[6];  *enq_north_ptr = values_from_core2[7];
            *enq_north_ptr = values_from_core2[8];  *enq_north_ptr = values_from_core2[9];
            *enq_north_ptr = values_from_core2[10]; *enq_north_ptr = values_from_core2[11];
            *enq_north_ptr = values_from_core2[12]; *enq_north_ptr = values_from_core2[13];
            *enq_north_ptr = values_from_core2[14]; *enq_north_ptr = values_from_core2[15];
            *enq_north_ptr = values_from_core2[16]; *enq_north_ptr = values_from_core2[17];
            *enq_north_ptr = values_from_core2[18]; *enq_north_ptr = values_from_core2[19];
            *enq_north_ptr = values_from_core2[20]; *enq_north_ptr = values_from_core2[21];
            *enq_north_ptr = values_from_core2[22]; *enq_north_ptr = values_from_core2[23];
            *enq_north_ptr = values_from_core2[24]; *enq_north_ptr = values_from_core2[25];
            *enq_north_ptr = values_from_core2[26]; *enq_north_ptr = values_from_core2[27];
            *enq_north_ptr = values_from_core2[28]; *enq_north_ptr = values_from_core2[29];
            *enq_north_ptr = values_from_core2[30]; *enq_north_ptr = values_from_core2[31];
        }
    }

    // Core 0 fully unrolled mixed reads: alternating WEST and SOUTH

    synch_barrier();
    perf_end();
    return 0;
}


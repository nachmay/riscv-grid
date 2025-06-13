#define IPR_NORTH_BASE 0x19000000
#define IPR_SOUTH_BASE 0x19000010
#define IPR_EAST_BASE  0x19000020
#define IPR_WEST_BASE  0x19000030

#define IPR_DATA   0x0
#define IPR_FULL   0x4
#define IPR_EMPTY  0x8

volatile uint32_t *north_full = (volatile uint32_t *)(IPR_NORTH_BASE + IPR_FULL);
volatile uint32_t *east_empty = (volatile uint32_t *)(IPR_EAST_BASE + IPR_EMPTY);

if (*north_full) { /* Wait or backoff */ }
if (!(*east_empty)) { /* Read data */ }


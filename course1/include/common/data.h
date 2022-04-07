#include<stdint.h>
#include<stdlib.h>
#include<stdio.h>

/* converter integer to ASCII */
uint8_t my_itoa(int32_t data, uint8_t* ptr, uint32_t base);

/* converter ASCII to integer */
int32_t my_atoi(uint8_t* ptr, uint8_t digits, uint32_t base);

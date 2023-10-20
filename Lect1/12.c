#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>


int main(void) 
{
    uint8_t u = 0xF5; //беззнаковый тип 11110101
    u >>= 1; // сдвиг вправо на 1 бит   01111010
    printf("u = 0x%" PRIx8 "\n", u);
}

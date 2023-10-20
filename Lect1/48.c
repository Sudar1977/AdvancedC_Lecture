#include <stdio.h>
#include <stdint.h>

int extractExp(float f) {
    union {
        float f;
        struct {
            uint32_t mantissa : 23;
            uint32_t exp : 8;
            uint32_t s : 1;
        } field;
    } fl;
    fl.f = f;
    return fl.field.exp;
}

int main(void)
{
    float f = 1.23;
    printf("exp = %d\n",extractExp(f)-127);
    return 0;
}    

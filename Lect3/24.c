#include <stdio.h>
#include <stdint.h>

 // До
int foo(int32_t a, int32_t b)
{
    a = a - b;
    b++;
    a = a * b;
    return a;
}
// После
#define foo(a, b) (((a)-(b))*((b)+1))

int main(int argc, char **argv)
{
int ret;
int a=5,b=10;
    ret = foo(a,b++);
    printf("Result: %d\n", ret);
return 0;
}

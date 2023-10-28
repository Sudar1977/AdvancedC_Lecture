#include <stdio.h>

int main(void) 
{
    float f = 15.625; 
    int *p;
    p = (int *)&f; 
    printf("*p = %#x\n",*p);
    *p = (127+3)<<23;// кладем в f 23
    printf("f = %f\n",f);   return 0;
}

#include <stdio.h>

int main(void) 
{
    char  c[4] = {'N','M','O','P'};  
    char  *pc = c;//char *pc = &c[0]; 
    int   *pd = (int *)pc; 
    printf("pc=%c \n",  *pc); 
    printf("pd=%#x \n", *pd);    
    return 0;
}

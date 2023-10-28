#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    int* p1;
    int m = 100;
    p1 = &m;
    free(p1); //ОШИБКА! Попытка освободить стековую память      
    return 0;  
}

#include <stdio.h>

int main(void) 
{
/* Нет ошибки */    
    int *p = NULL;
    if(p == &(*p))
        printf("True\n");
    return 0;
}      

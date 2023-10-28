#include <stdio.h>

int main(void)
{
    int *p1;
    int m = 100;
    p1 = &m; // присваиваем адрес m
    (*p1)++;   // ОШИБКА! увеличение 
             //адреса, а не значения
    printf("%d",*p1);
    return 0;  
}             

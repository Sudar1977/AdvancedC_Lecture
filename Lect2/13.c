#include <stdio.h>

int main(void) 
{
    int *p = NULL; // 0 —  не указывает ни на что 

/*ОШИБКА! Попытка разыменовать нулевой указатель */ 
    if(p && *p)//if(p && *p) правильно - ленивая логика
        printf("True\n");
    return 0;
}



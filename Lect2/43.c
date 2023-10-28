#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    const size_t SIZE = 10;
    int *arr;
    arr = malloc(sizeof(int) * SIZE);
    arr[SIZE] = 100; // ОШИБКА! выход за
                     // границу массива
    return 0;  
}   

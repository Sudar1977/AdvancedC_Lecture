#include <stdio.h>

int main(void) 
{
    int a[5] = {1,2,3,4,5}; // в памяти выделено 20 байт
    const int* pa = &a[0]; // в памяти выделено 8 байт
    int *pb = &a[0]; // в памяти выделено 8 байт
//a = &a[2];  // ОШИБКА!
//pa = &a[1]; // Нельзя менять константный указатель
    pb = &a[1];
    pb[2] = 100;
    return 0;
}
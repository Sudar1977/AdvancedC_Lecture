#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    {
        int* p1;
        p1 = malloc(sizeof(int));
        *p1 = 99;
        free(p1);
        *p1 = 100; // ОШИБКА! память не определена
    }
    {
        int* p1;
        p1 = malloc(sizeof(int));
        *p1 = 99;
        *p1 = 100;
        free(p1);
    }
    return 0;  
}

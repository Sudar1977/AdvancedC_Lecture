#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int *p;
    p = malloc(4); // ОШИБКА!
    // нарушение переносимости
    p = malloc(sizeof(int));
    return 0;  
}

#include <stdio.h>

//может сравнивать любые указатели
_Bool is_same(void *a, void *b) {
    // *a = *b; // ОШИБКА! void * нельзя разыменовывать
    return a == b; // Можно только сравнивать
}

int main(void)
{
    int a=5;
    int *pa = &a;
    is_same(&a, pa) ? printf("Same\n") : printf("Different\n");
    return 0;
}

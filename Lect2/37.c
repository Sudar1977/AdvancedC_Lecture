#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    char *str1 = malloc(strlen("Hello world") + 1);
    strcpy(str1, "Hello world");
    //...
    free(str1);  // Первый раз free
    //...
    free(str1); // ОШИБКА! второй раз free  
    return 0;  
}

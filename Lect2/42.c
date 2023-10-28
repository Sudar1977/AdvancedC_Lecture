#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{    
    int len = strlen("Hello");
    char *str1 = malloc(len + 1);
    strcpy(str1, "Hello");
    char *str2 = str1;
    printf("%s\n", str1);
    // ... много кода
    free(str1);
    // .. много кода
    printf("%s\n", str2); // ОШИБКА! Эта память уже не определена
    return 0;  
}   

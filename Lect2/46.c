#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(void)
{
    int len = strlen("Hello");
    char* str1 = malloc(len + 1);
    strcpy(str1, "Hello");
    char* str2 = malloc(len + 1);
    strcpy(str2, "Hello");
    if (str1 == str2)    
    {
        printf("Strings are equal\n");
    }   
    else    
    {
        printf("Strings are NOT equal\n");
    }
    return 0;  
}

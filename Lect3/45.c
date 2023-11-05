#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) 
{ 
 // Плохо. Вызов  strlen в цикле 
    {
        char s[]="Hello world";  
        for(size_t i=0; i<strlen(s); i++)
            putchar(s[i]);
    }
// Хорошо. Вызов  strlen 1 раз
    {
        char s[]="Hello world";
        size_t len = strlen(s);
        for(size_t i=0; i<len; i++)
            putchar(s[i]);
    }
    return 0; 
}

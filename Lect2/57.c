#include <stdio.h>

int main(void)
{
    {
        char s[] = "Hello world";
        s[0] = 'A'; // Так можно
    }
    {
        char *s = "Hello world";
        s[0] = 'A'; // ОШИБКА! read-only string
    }
    return 0;  
}


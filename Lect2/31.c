#include <stdio.h>

int main(void) 
{
    
    {
        int *p1; // указывает на случайную область памяти
        int n = *p1; // ОШИБКА разыменования
        printf("%d", n);
    }
    
    
    {
        int* p1;
        int m;
        p1 = &m; // указатель ссылается на
             // неинициализированную
             // переменную
        int n = *p1;
        printf("%d", n); 
    }
    return 0;
}


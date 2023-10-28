#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    {
        int* p = malloc(sizeof(int)); 
        *p = 5;
        p = malloc(sizeof(int)); //ОШИБКА!
        // Предыдущий блок все еще
        // занимает память
    }
    {
        int* p = malloc(sizeof(int)); 
        *p = 5;
        free(p);
        p = malloc(sizeof(int));    
    }
    
    return 0;  
}





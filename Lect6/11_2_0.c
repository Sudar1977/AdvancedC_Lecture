#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct list {
    uint32_t id;
    struct list *next;
} list;

int main(void)
{
    list* head=NULL;
    
    head = malloc(sizeof(list));
    head->id = 1;
    
    /* Важно занести NULL в последний элемент */
    head->next = NULL;
    
    printf("%d \n",head->id);  
    return 0;
}

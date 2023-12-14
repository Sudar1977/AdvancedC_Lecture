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
    
    head->next = malloc(sizeof(list));
    head->next->id = 2;
      
/* Важно занести NULL в последний элемент */
    head->next->next = NULL;
    
    printf("%d %d\n",head->id, head->next->id);  
    return 0;
}

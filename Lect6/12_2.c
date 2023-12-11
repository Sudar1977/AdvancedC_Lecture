#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct list {
    uint32_t id;
    struct list *next;
} list;

//Рекурсивная печать
void printListRecurs(list *p)
{
    if(p)
    {
        printf("%d ",p->id);
        printListRecurs(p->next);
    }
    printf("\n");
}

int main(void)
{
    list* head = NULL;
    
    head = calloc(1,sizeof(list));
    head->id = 1;

    head->next = calloc(1,sizeof(list));
    head->next->id = 2;
    
    head->next->next = calloc(1,sizeof(list));
    head->next->next->id = 3;

    printListRecurs(head);
    
    return 0;
}

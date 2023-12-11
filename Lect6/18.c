#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct list {
    uint32_t id;
    struct list *next;
} list;

//Итерационная печать
void printListIteration(list *p)
{
    while(p)
    {
        printf("%d ",p->id);
        p = p->next;
    }
    printf("\n");
}

/* Без заглавного элемента, рекурсивный вариант*/
void insert_end_recurs(list **head, int32_t value)
{
    if(*head == NULL)
    {
        (*head)     = calloc(1,sizeof(list));
        (*head)->id = value;
    }
    else
    {
        insert_end_recurs( &((*head)->next), value );
    }
}

int main(void)
{
    list* L = NULL;
    
    insert_end_recurs(&L,1);
    insert_end_recurs(&L,2);
    insert_end_recurs(&L,3);

    printListIteration(L);
    
    return 0;
}

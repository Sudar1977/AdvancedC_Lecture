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

/* Без заглавного элемента */
void insert(list **head, int32_t value)
{
    list *new = calloc(1,sizeof(list));
    new->id   = value;
    new->next = *head;
    *head     = new;
}

int main(void)
{
    list* L = NULL;
    
    insert(&L,3);
    insert(&L,2);
    insert(&L,1);

    printListIteration(L);
    
    return 0;
}

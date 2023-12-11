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

/* Без заглавного элемента и без двойного указателя*/
list* insert2(list *head, int32_t value)
{
    list *new = calloc(1,sizeof(list));
    new->id   = value;
    new->next = head;
    return new;
}

int main(void)
{
    list* L=NULL;
    
    L = insert2(L,3);
    L = insert2(L,2);
    L = insert2(L,1);

    printListIteration(L);
    
    return 0;
}

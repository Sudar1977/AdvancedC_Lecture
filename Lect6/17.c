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
list* insert_end2(list *head, int32_t value)
{
    list *new = calloc(1,sizeof(list));
    new->id = value;
    if( head == NULL )
    {// пустой список
        return new;
    }
    else
    {
        list *p = head;
        while(p->next != NULL)
            p = p->next; //идем в конец списка
        p->next = new;
        return head;
    }
}

int main(void)
{
    list* L = NULL;
    
    L = insert_end2(L,1);
    L = insert_end2(L,2);
    L = insert_end2(L,3);

    printListIteration(L);
    
    return 0;
}

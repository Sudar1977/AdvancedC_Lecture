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

/* Без заглавного элемента c использованием двойного указателя*/
void insert_end(list **head, int32_t value)
{
    list *new = calloc(1,sizeof(list));
    new->id = value;
    if( *head == NULL )
    { // пустой список
        *head = new; // изменяем голову списка
    }
    else
    {
        list *p = *head;
        while(p->next != NULL)
            p = p->next; //идем в конец списка
        p->next = new;
    }
}


int main(void)
{
    list* L = NULL;
    
    insert_end(&L,1);
    insert_end(&L,2);
    insert_end(&L,3);

    printListIteration(L);
    
    return 0;
}

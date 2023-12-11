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

/* С заглавным элементом, в этом случае двойной указатель не нужен*/
void insert3(list *head, int32_t value)
{
    list *new = calloc(1,sizeof(list));
    new->id = value;
    new->next = head->next; //в списке точно есть хотя бы одно звено
    head->next = new;
}

int main(void)
{
    list* L = calloc(1,sizeof(list)); // Добавляем заглавное звено
    L->id = -1; // Эти данные не используются
    
    insert3(L,3);
    insert3(L,2);
    insert3(L,1);

    printListIteration(L);
    
    return 0;
}

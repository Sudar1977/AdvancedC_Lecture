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
    
    head = calloc(1,sizeof(list));
    head->id = 1;

    printf("%d \n",head->id);
    
    return 0;
}

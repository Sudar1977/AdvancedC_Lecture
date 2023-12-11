#include <stdint.h>
#include <stdio.h>

typedef struct list {
    uint32_t id;
    struct list *next;
} list;

int main(void)
{
    return 0;
}

#include <stdint.h>
#include <stdio.h>

typedef struct tree {
    int key;//datatype 
    struct tree *left, *right;
    struct tree *parent; // необязательное поле
} tree;

int main(void)
{
    return 0;
}

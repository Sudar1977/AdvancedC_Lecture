#include <stdint.h>
#include <stdio.h>

typedef struct tree {
    int key;//datatype 
    struct tree *left, *right;
    struct tree *parent; // необязательное поле
} tree;

int main(void)
{
    tree *tr = NULL;
    
    tr = calloc(1,sizeof(tree));
    tr->key = 1;
    
    return 0;
}

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

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
    
    tr->right = calloc(1,sizeof(tree));
    tr->right->key = 5;
    
    
       
    return 0;
}

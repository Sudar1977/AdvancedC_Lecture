#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

struct node {
    int key;
    uint32_t height;
    struct node *left;
    struct node *right;
};

struct node* insert(struct node *p, int k)
{
    if( p==NULL ) {
        p=(struct node*)calloc(1,sizeof(struct node));
        p->key=k;
        return p;
    }
    if( k < p->key )
        p->left  = insert(p->left, k);
    else
        p->right = insert(p->right,k);
    return balance(p);
    //~ return p;//без балансировки обычное дерево поиска
}



int main(void)
{
    return 0;
}


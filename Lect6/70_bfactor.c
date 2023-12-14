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
        p=malloc(sizeof(struct node));
        p->key=k;
        p->height=0;
        p->left = p->right=NULL;
        return p;
    }
    if( k < p->key )
        p->left = insert( p->left,k);
    else
        p->right = insert( p->right,k);
    return balance(p);
}

/* Высота поддерева */
uint32_t height(struct node* p) {
    return p?p->height:0;
}


/* Вычисляем баланс фактор узла */
int bfactor(struct node* p) {
    return height(p->right)-height(p->left);
}

/* Восстанавливаем корректно значение высоты */
void fixheight(struct node* p)
{
    uint32_t hl = height(p->left);
    uint32_t hr = height(p->right);
    p->height = (hl>hr?hl:hr)+1;
}


int main(void)
{
    return 0;
}


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

struct node {
    int key;
    uint32_t height;
    struct node *left;
    struct node *right;
};

struct node* balance(struct node* p);

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

/* левый поворот вокруг Y */
struct node* rotateleft(struct node* Y) {
    struct node* X = Y->right;
    Y->right = X->left;
    X->left = Y;
    fixheight(Y);
    fixheight(X);
    return X;
}

/* правый поворот вокруг X */
struct node* rotateright(struct node* X) {
    struct node* Y = X->left;
    X->left = Y->right;
    Y->right = X;
    fixheight(X);
    fixheight(Y);
    return Y;
}

/* балансировка узла p */
struct node* balance(struct node* p) 
{
    fixheight(p);
    if( bfactor(p)==2)
    {
        if( bfactor(p->right) < 0 )
            p->right = rotateright(p->right);
        return rotateleft(p);
    }
    if( bfactor(p)==-2 )
    {
        if( bfactor(p->left) > 0  )
            p->left = rotateleft(p->left);
        return rotateright(p);
    }
    return p; // балансировка не нужна
}

 /* удаление ключа k из дерева p */
struct node *removenode(struct node *p, int k)
{
    /* ищем нужный ключ */
    if( !p ) return 0; // если не нашли
    if( k < p->key )
        p->left = removenode(p->left,k);
    else if( k > p->key )
        p->right = removenode(p->right,k);
    else //  k == p->key
    {
        struct node* q = p->left;
        struct node* r = p->right;
        free(p);       
        /* Если правого поддерева нет то по свойству АВЛ-дерева слева у этого узламожет быть только один единственный дочерний узел (дерево высоты 1), либо узел p вообще лист */
        if( !r ) return q;
        /* Находим последователя. Извлекаем его оттуда, слева к min подвешиваем q, справа — то, что получилось из r, возвращаем min после его балансировки. */
        struct node* min = findmin(r);
        min->right = removemin(r);
        min->left = q;
        return balance(min);
    }
    return balance(p);
}


int main(void)
{
    return 0;
}


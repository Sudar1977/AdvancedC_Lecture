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

void inorder(struct node *root) {
    if(root == NULL)
        return;
    if(root->left)    
        inorder(root->left);
    printf("%d ",root->key);
    if(root->right)
        inorder(root->right);
}

//Вычисляем высоту дерева
int heightTree(struct node* p)
{
    if (p == NULL)
        return 0;
    else
    {
        /* вычисляем высоту каждого поддерева */
        int lheight = heightTree(p->left);
        int rheight = heightTree(p->right);
 
        if (lheight > rheight)
            return (lheight + 1);
        else
            return (rheight + 1);
    }
}
//Печатаем все узлы на уровне level
void printCurrentLevel(struct node* root, int level)
{
    if (root == NULL)
        return;
    if (level == 1)
        printf("%d ", root->key);
    else if (level > 1)
    {
        //если поменять местами то будет обход справа на лево
        printCurrentLevel(root->left,  level - 1);
        printCurrentLevel(root->right, level - 1);
    }
}
//функция печати
void printBFS(struct node* root)
{
    int h = heightTree(root);
    for (int i = 1; i <= h; i++)
        printCurrentLevel(root, i);
}


int main(void)
{
    struct node* tr=NULL;
    tr = insert(tr,1);    
    tr = insert(tr,3);
    tr = insert(tr,5);
    tr = insert(tr,6);
    tr = insert(tr,7);
    tr = insert(tr,10);
    tr = insert(tr,15);
    tr = insert(tr,13);  
    tr = insert(tr,18);  
        
    printf("\nInorder\n");    
    inorder(tr);
    printf("\nBFS (Breadth First Traversal)\n");
    printBFS(tr);        
    return 0;
}


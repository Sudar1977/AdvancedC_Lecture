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
/* Находим минимальный ключ в этом поддереве.
 * По свойству двоичного дерева поиска этот ключ находится
 * в конце левой ветки, начиная от корня дерева */
struct node* findmin(struct node* p) // поиск узла с минимальным ключом в дереве p 
{
    return p->left?findmin(p->left):p;
}
// удаление узла с минимальным ключом из дерева p
struct node* removemin(struct node* p) 
{
    if( p->left==0 )
        return p->right;
    p->left = removemin(p->left);
    return balance(p);
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
        if( !r )
            return q;
        /* Находим последователя. Извлекаем его оттуда,
         * слева к min подвешиваем q, справа — то, что получилось из r,
         * возвращаем min после его балансировки. */
        struct node* min = findmin(r);
        min->right = removemin(r);
        min->left = q;
        return balance(min);
    }
    return balance(p);
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
    tr = insert(tr,10);
    tr = insert(tr,5);
    tr = insert(tr,15);
    tr = insert(tr,3);
    tr = insert(tr,7);
    tr = insert(tr,13);  
    tr = insert(tr,18);  
    tr = insert(tr,1);    
    tr = insert(tr,6);
        
    printf("\nInorder\n");    
    inorder(tr);
    printf("\nBFS (Breadth First Traversal)\n");
    printBFS(tr);        

    tr = removenode(tr,10);

    printf("\nInorder\n");    
    inorder(tr);
    printf("\nBFS (Breadth First Traversal)\n");
    printBFS(tr); 
    
    return 0;
}


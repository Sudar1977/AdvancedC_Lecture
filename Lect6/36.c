#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct tree {
    int key;//datatype 
    struct tree *left, *right;
    struct tree *parent; // необязательное поле
} tree;

//Вычисляем высоту дерева
int heightTree(tree* p)
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
void printCurrentLevel(tree* root, int level)
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
void printBFS(tree* root)
{
    int h = heightTree(root);
    for (int i = 1; i <= h; i++)
        printCurrentLevel(root, i);
}

void preorder(tree *root)
{
    if(root == NULL)
        return;
    printf("%d ",root->key);
    if(root->left)
        preorder(root->left);
    if(root->right)
        preorder(root->right);
}
//Вид справа на двоичное дерево
void printBFSright(tree *root, int level, int *max_level)
{
    if (root == NULL)
        return;
//    printf("%d %d\n",level,*max_level);
    if (*max_level < level)
    {
        printf("%d\t", root->key);
        *max_level = level;
    }
    printBFSright(root->right, level+1, max_level);
    printBFSright(root->left,  level+1, max_level);
}


int main(void)
{
    tree *tr = NULL;
//переимновываем узлы в предыдущем дереве    
    tr = calloc(1,sizeof(tree));
    tr->key = 3;
    tr->right = calloc(1,sizeof(tree));
    tr->right->key = 1;
    tr->left = calloc(1,sizeof(tree));
    tr->left->key = 5;
    tr->left->left = calloc(1,sizeof(tree));
    tr->left->left->key=6;
    tr->left->right = calloc(1,sizeof(tree));
    tr->left->right->key=2;
//добавляем узлы от 2
//~ tr->left->right->key=2;
    tr->left->right->left = calloc(1,sizeof(tree));
    tr->left->right->left->key = 7;//слева
    tr->left->right->right = calloc(1,sizeof(tree));
    tr->left->right->right->key = 4;//справа
//добавляем узлы от 1
//~ tr->right->key = 1;
    tr->right->left = calloc(1,sizeof(tree));
    tr->right->left->key=0;
    tr->right->right = calloc(1,sizeof(tree));
    tr->right->right->key=8;
//печатаем дерево
    printf("BFS (Breadth First Traversal)\n");
    printBFS(tr);
    printf("\nPreorder\n");
    preorder(tr);
    printf("\n");
int level     = 1;
int max_level = 0;
    printBFSright(tr,level,&max_level);
    return 0;
}

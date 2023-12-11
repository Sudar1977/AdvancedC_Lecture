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

void preorder(tree *root) {
    if(root == NULL)
        return;
    printf("%d ",root->key);
    if(root->left)
        preorder(root->left);
    if(root->right)
        preorder(root->right);
}
//Сумма пути от корня до листа равная числу?
int hasPathSum(tree* root,int sum)
{
    if(!root)
        return 0;
    if(!root->right && !root->left)
        return sum == root->key;
    return hasPathSum(root->left, sum - root->key) ||
           hasPathSum(root->right,sum - root->key);
}


int main(void)
{
    tree *tr = NULL;
//переимновываем узлы в предыдущем дереве    
    tr = calloc(1,sizeof(tree));
    tr->key = 10;
    tr->right = calloc(1,sizeof(tree));
    tr->right->key = 15;
    tr->left = calloc(1,sizeof(tree));
    tr->left->key = 5;
    tr->left->left = calloc(1,sizeof(tree));
    tr->left->left->key=3;
    tr->left->right = calloc(1,sizeof(tree));
    tr->left->right->key=7;
//добавляем узлы справа от 15
//~ tr->right->key = 15;
    tr->right->left = calloc(1,sizeof(tree));
    tr->right->left->key = 13;//слева
    tr->right->right = calloc(1,sizeof(tree));
    tr->right->right->key = 18;//справа
//добавляем узел слева от 3
//~ tr->left->left->key=3;
    tr->left->left->left = calloc(1,sizeof(tree));
    tr->left->left->left->key=1;
//добавляем узел слева от 7
//~ tr->left->right->key=7;
    tr->left->right->left = calloc(1,sizeof(tree));
    tr->left->right->left->key=6;
//печатаем дерево
    printf("BFS (Breadth First Traversal)\n");
    printBFS(tr);
    printf("\nPreorder\n");
    preorder(tr);
    printf("\n");
int n = 38;
    printf("n=%d %s\n",n,hasPathSum(tr,n)?"YES":"NO");
  
    return 0;
}

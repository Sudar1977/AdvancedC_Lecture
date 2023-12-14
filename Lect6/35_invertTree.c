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
//Как инвертировать двоичное дерево
void swap(tree *node)
{
    tree *tmp   = node->left;
    node->left  = node->right;
    node->right = tmp;;
}
tree* invertTree(tree *root)
{
    if(root)
    {
        invertTree(root->left);
        invertTree(root->right);
        swap(root);
    }
    return root;
}


int main(void)
{
    tree *tr = NULL;
//переимновываем узлы в предыдущем дереве    
    tr = calloc(1,sizeof(tree));
    tr->key = 14;
    tr->right = calloc(1,sizeof(tree));
    tr->right->key = 17;
    tr->left = calloc(1,sizeof(tree));
    tr->left->key = 9;
    tr->left->left = calloc(1,sizeof(tree));
    tr->left->left->key=1;
//добавляем узлы справа от 17
//~ tr->right->key = 17;
    tr->right->left = calloc(1,sizeof(tree));
    tr->right->left->key = 15;//слева
    tr->right->right = calloc(1,sizeof(tree));
    tr->right->right->key = 20;//справа
//печатаем дерево
    printf("BFS (Breadth First Traversal)\n");
    printBFS(tr);
    printf("\nPreorder\n");
    preorder(tr);
    printf("\n");
    invertTree(tr);
    printf("BFS (Breadth First Traversal)\n");    
    printBFS(tr);
    printf("\nPreorder\n");
    preorder(tr);
    printf("\n");
  
    return 0;
}

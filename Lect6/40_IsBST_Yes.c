#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct tree {
    int key;//datatype 
    struct tree *left;
    struct tree *right;
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

typedef enum {false=0,true=1} bool;
bool isBST(tree* root)
{
static tree *prev = NULL;    
    // traverse the tree in inorder fashion and keep track of prev node
    if (root)
    {
        if (!isBST(root->left))
          return false;
        // Allows only distinct valued nodes
        if (prev != NULL && root->key <= prev->key)
          return false;
        prev = root;
        return isBST(root->right);
    }
    return true;
}

int main(void)
{
    tree *tr = NULL;
//переимновываем узлы в предыдущем дереве    
    tr = calloc(1,sizeof(tree));
    tr->key = 8;
    tr->right = calloc(1,sizeof(tree));
    tr->right->key = 10;
    tr->left = calloc(1,sizeof(tree));
    tr->left->key = 3;
    tr->left->left = calloc(1,sizeof(tree));
    tr->left->left->key=1;
    tr->left->right = calloc(1,sizeof(tree));
    tr->left->right->key=6;
//добавляем узлы от 6
//~ tr->left->right->key=6;
    tr->left->right->left = calloc(1,sizeof(tree));
    tr->left->right->left->key = 4;//слева
    tr->left->right->right = calloc(1,sizeof(tree));
    tr->left->right->right->key = 7;//справа
//добавляем узлы от 10
//~ tr->right->key = 10;
    tr->right->right = calloc(1,sizeof(tree));
    tr->right->right->key=14;
    tr->right->right->left = calloc(1,sizeof(tree));
    tr->right->right->left->key=13;
//печатаем дерево
    printf("BFS (Breadth First Traversal)\n");
    printBFS(tr);
    printf("\nPreorder\n");
    preorder(tr);
    printf("\n");
    printf("Is BST? %s\n",isBST(tr)?"YES":"NO");
    printf("\nPreorder\n");
    preorder(tr);
    
    return 0;
}

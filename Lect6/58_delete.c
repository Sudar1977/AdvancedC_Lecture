#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct tree {
    int key;//datatype 
    struct tree *left, *right;
    struct tree *parent; // необязательное поле
} tree;


void preorder(tree *root)
{
    if(root == NULL)
        return;
    printf("%d ",root->key);
    if(root->left)//! NULL
        preorder(root->left);
    if(root->right)//! NULL
        preorder(root->right);
}

void inorder(tree *root) {
    if(root == NULL)
        return;
    if(root->left)    
        inorder(root->left);
    printf("%d ",root->key);
    if(root->right)
        inorder(root->right);
}

void postorder(tree *root)
{
    if(root == NULL)
        return;
    if(root->left)
        postorder(root->left);
    if(root->right)
        postorder(root->right);
    printf("%d ",root->key);
}


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

void insert(tree **root,int key, tree *pt) {
    if(!(*root))
    { 
// дерево пустое или дошли до нужного места
        *root=(tree *)calloc(1,sizeof(tree));
        (*root)->key=key;
        (*root)->parent=pt;
// c calloc строчка ниже не нужа
        (*root)->left=(*root)->right= NULL;
    }
    else if( key < (*root)->key)
        insert( &((*root)->left) ,key,*root);
    else
        insert( &((*root)->right),key,*root);
}

/* Рекурсивная реализация */
tree* search_tree(tree *root, int key)
{
    if(root==NULL || root->key == key)
        return root;
    else if(root->key > key)
        return search_tree(root->left, key);
    else
        return search_tree(root->right, key);
}

/* Итеративная версия */
tree* search_tree_i(tree *root, int key){
    tree *find=root;
    while(find && find->key!=key) {
        if( key < find->key )
            find = find->left;
        else
            find = find->right;
    }
    return find;
}


tree * searchKey(tree *root, int key)
{
    if(!root)
        return NULL;
    if(root->key == key)
        return root;
    if(key < root->key )
        return searchKey(root->left, key);
    return searchKey(root->right, key);
}

tree* min_tree(tree *root)
{
    tree *find=root;
    while(find && find->left) {
            find = find->left;
    }
    return find;
}

tree* left_follower_key(tree *root) {
    if(root==NULL)
        return root;
    if(root->right)
        return min_tree(root->right);
    else {
        tree *y = root->parent;
        tree *x = root;
        while(y && x==y->right) {
            x = y;
            y = y->parent;
        }
        return y;
    }
}

 /*  Удаление узла из дерева */
tree* delete(tree *root, tree* pt) {
    tree *remove = NULL, *remove_son;
    /* Нет потомков или один потомок. Удаляем сам узел */
    if(pt->left == NULL || pt->right == NULL)
        remove = pt;
    else
    /* Два потомка. Удаляем его последователя.У последователя только один правый потомок, потому что это самый левый элемент правого поддерева.*/ 
         remove = left_follower_key(pt);// Всегда только один потомок
    /* Прикрепляем потомка удаляемого элемента к    
родителю, либо делаем этого потомка корнем дерева*/         
    if(remove -> left != NULL) // не сработает если это последователь pt
        remove_son = remove->left;
    else
        remove_son = remove->right;
    if( remove_son ) // обновляем родителя у удаляемого потомка
        remove_son->parent = remove->parent;
    if(remove->parent==NULL) // если удаляем корень
        root = remove_son;
    else if (remove == remove->parent->left)
        remove->parent->left = remove_son;
    else
        remove->parent->right = remove_son;
    if(pt != remove)
        pt->key = remove->key;
    return remove;
}


int main(void)
{
    tree *tr = NULL;
    insert(&tr,10,NULL);
    insert(&tr,5, NULL);
    insert(&tr,15,NULL);
    insert(&tr,3, NULL);
    insert(&tr,7 ,NULL);  
    insert(&tr,18,NULL);  
    insert(&tr,1, NULL);    
    insert(&tr,6 ,NULL);
    printf("BFS (Breadth First Traversal)\n");    
    printBFS(tr);
    printf("\nInorder\n");    
    inorder(tr);
    insert(&tr,8, NULL);     
    printf("\n");
    printf("BFS (Breadth First Traversal)\n");    
    printBFS(tr);
    printf("\nInorder\n");    
    inorder(tr);
tree *node;
    node = search_tree(tr,8);
    printf("\nsearch_tree = %d\n",node->key);
    node = search_tree_i(tr,8);    
    printf("search_tree_i = %d\n",node->key);
    node = searchKey(tr,8);    
    printf("searchKey = %d\n",node->key);    
    node = min_tree(tr);    
    printf("min_tree = %d\n",node->key);   
    node = left_follower_key(tr);    
    printf("root=%d left_follower_key = %d\n",tr->key,node->key);
    node = left_follower_key(tr->right);    
    printf("root=%d left_follower_key = %d\n",tr->right->key,node->key);
        
    return 0;
}

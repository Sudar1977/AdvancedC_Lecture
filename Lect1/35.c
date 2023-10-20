#include <stdio.h>
#include <inttypes.h>


int main(void)
{
    int i=123;
    int *pi; //указатель на переменную      
    pi = &i;

    int **ppi;// указатель на указатель
    ppi = &pi;
    printf("**ppi = %d\n",**ppi);

    struct s {
        int i;
        float f;
    } st;
    
    struct s  *ps;
    ps = &st; //указатель на структуру
    printf("ps -> i = %d\n",ps->i);

    int ar[5] = {1,2,3,4,5};
    int *pa; //указатель на массив
    pa = &ar[0]; // pa = ar;
    printf("*pa = %d\n",*pa);
    
    int ar2[3][5] =  {{1,2,3,4,5}, {11,12,13,14,15}, {21,22,23,24,25}};
    int (*pa2)[5]; //указатель массив из 5-и элементов
    pa2 = ar2+1; //адрес 1-ой строки
    printf("**pa2 = %d\n",**pa2);    
    return 0;
}

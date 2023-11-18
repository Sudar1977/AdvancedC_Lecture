#include<stdio.h>
enum {SIZE=2};

/* Функция умножает матрицу a на b и результат заносит в a */
void mulMatr(int a[][SIZE], int b[][SIZE])
{
    int res[SIZE][SIZE] = {{0}};

    for (int i = 0; i < SIZE; i++)
        for (int j = 0; j < SIZE; j++)
            for (int k = 0; k < SIZE; k++)
            {
               res[i][j] += a[i][k] * b[k][j];
            }
    for (int i = 0; i < SIZE; i++)
        for (int j = 0; j < SIZE; j++)
            a[i][j] = res[i][j];
}

/* Функция бинарного возведение в степень матриц*/
int fibMatr(int pow) 
{
    int t[2][2] = {
                   {1,0},
                   {0,1}
                  };
    int p[2][2] = {
                   {0,1},
                   {1,1}
                  };
    while(pow > 0) 
    {
        if( pow%2 == 1)//нечетная степень
            mulMatr(t,p);//переходим к чет
        mulMatr(p,p);
        pow /= 2;
    }
    return t[1][0];
}
/*
|0 1|n       |F(n-1) F(n)  |
|1 1|     =  |F(n)   F(n+1)|
*/
void printMatr(int a[][SIZE]) 
{
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++)
        {
            printf("%2d",a[i][j]);
        }
        printf("\n");
    }
}
int main(void) 
{
    printf("%d",fibMatr(10)); // 55
    return 0;
}


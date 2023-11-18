#include<stdio.h>

int cnk2(int n, int k) {
    double res = 1;
    for (int i=1; i<=k; ++i)
        res = res * (n-k+i) / i;
    return (int) (res + 0.01);
}

int main(void) 
{
    int n, k;
    scanf("%d%d", &n,&k); 
    //Input: 3 2  output: 3  
    //Input: 30 10
    //output: -108

    printf("%d",cnk2(n,k));
    return 0;
}

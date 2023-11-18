#include<stdio.h>

int cnk(int n, int k) {
    int res = 1;
    for (int i=n-k+1; i<=n; ++i)
        res *= i;
    for (int i=2; i<=k; ++i)
        res /= i;
    return res;
}


int main(void) 
{
    int n, k;
    scanf("%d%d", &n,&k); 
    //Input: 3 2  output: 3  
    //Input: 30 10
    //output: -108

    printf("%d",cnk(n,k));
    return 0;
}

#include<stdio.h>

int fact[]={1,1,2,6,24,120,720,5040,40320};
int factorial(int n) {
    return fact[n];
}
int cnk4(int n, int k) {
    int res = factorial(n);
    res /= factorial(n-k);
    res /= factorial(k);
    return res;
}

int main(void) 
{
    int n, k;
    scanf("%d%d", &n,&k); 
    //Input: 3 2  output: 3  
    //~ Input: 8 3
    //~ output: 56

    printf("%d",cnk4(n,k));
    return 0;
}

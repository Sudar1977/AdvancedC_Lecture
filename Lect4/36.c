int fact[]={1,1,2,6,24,120,720,5040,40320, ...};
int factorial(int n) {
    return fact[n];
}
int cnk4(int n, int k) {
    int res = factorial(n);
    res /= factorial(n-k);
    res /= factorial(k);
    return res;
}

int cnk3(int n, int k) {
    const int maxn = n;
    int C[maxn+1][maxn+1];
    for (int i=0; i<=maxn; ++i) {
        C[i][0] = C[i][i] = 1;
        for (int j=1; j<i; ++j)
            C[i][j] = C[i-1][j-1] + C[i-1][j];
    }
    return C[n][k];
}

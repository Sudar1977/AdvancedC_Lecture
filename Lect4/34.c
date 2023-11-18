#include <stdio.h>
#define N 1000
int main (void) {
    int c[N] = {0};
    int n;
    scanf ("%d", &n);

    c[0] = 1;
    for (int j = 1; j <= n; j++)
        for (int i = j; i >= 1; i--)
            c[i] = c[i - 1] + c[i];
    for (int i = 0; i <= n; i++)
        printf ("%d ", c[i]);
    return 0;
}

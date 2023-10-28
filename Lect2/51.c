#include <stdio.h>

void print_matrix(int n, int m, int a[][m]) { // Важен только размер строки
    for( int i=0; i<n; i++ ) {
        for( int j=0; j<m; j++ ) {
            printf("%4d ",a[i][j]);
        }
        printf("\n");
    }
}


int main(void) {
    int a[2][3] =
    {
        {1,2,3},
        {4,5,6}
    };
    print_matrix(2,3,a);
    return 0;
}
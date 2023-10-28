#include <stdio.h>

void print_matrix(int n, int m, void *a) {
    int (*pa)[m] = a; // Указатель на строку из 
                      // m элементов типа int
    for( int i=0; i<n; i++ ) {
        for( int j=0; j<m; j++ ) {
            printf("%4d ",pa[i][j]);//двухмерный массив
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

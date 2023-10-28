#include <stdio.h>
extern int *ar;

int ar[5];

int main(void) {
    ar[3] = 123;
    printf("%d",ar[3]);
    return 0;
}


#include <stdio.h>

int ar[] = {1,2,3,4,5};
int *par = ar;

int main(void) {
    par[3] = 123;
    ar[2] = 321;
    return 0;
}

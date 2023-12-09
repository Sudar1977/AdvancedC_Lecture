#include <stdio.h>
#include <inttypes.h>

double pown (double d, unsigned n){
    double x = 1.0;

    for (size_t j = 1; j <= n; j++) {
        x *= d;
    }
    return x;
}

int main (void) {
    double sum = 0.0;
    for (size_t i = 1; i <= 0xfffffff; i++) {
        sum += pown (i, i % 5);
    }
    printf ("sum = %g\n", sum);
    return 0;
}

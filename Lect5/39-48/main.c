#include <stdio.h>

extern unsigned int fact(unsigned int);
 
int main (void) {
    unsigned int n;
    scanf("%u",&n);

    printf ("fact = %lld\n", fact ( n ));
    return 0;
}
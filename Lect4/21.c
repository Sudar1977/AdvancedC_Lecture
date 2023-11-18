#include <stdio.h>
#include <math.h>

int binpow (int n, int pow) {
    if (pow == 0)
        return 1;
    if ( (pow % 2) == 1) // нечетная степень (pow & 1)
        return binpow (n, pow-1) * n;
    else { // четная степень
        int b = binpow (n, pow/2);// pow>>1
        return b * b;
    }
}

int main(void)
{
    int n,p;
    scanf("%d%d", &n,&p);
    printf("n=%d,pow=%d binpow=%d mpow %f\n",n,p,binpow(n,p),pow(n,p));
        
    return 0;
}



#include <stdio.h>
#include <inttypes.h>

_Bool difSign(int32_t a, int32_t b) {
    return (a>>31)^(b>>31);
}

int main(void)
{
    int a = -3,b=5;
    difSign(a,b) ? printf("YES\n") : printf("NO\n");
    return 0;
}

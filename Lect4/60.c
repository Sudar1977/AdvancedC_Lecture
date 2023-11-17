#include <stdio.h>
#include <inttypes.h>

uint64_t getHash(char const *s) {
    const int p = 31;
    uint64_t hash = 0, p_pow = 1;
    while(*s) {
/* отнимаем 'a' от кода буквы  и единицу прибавляем, чтобы у строки вида 'aaaaa' хэш был ненулевой */
        hash += (*s++ - 'a' + 1) * p_pow;
        p_pow *= p;
    }
    return hash;
}

int main(void)
{
    char s[100] = {0};
    scanf("%s",s);
    printf("hash = %llu\n", getHash(s));
    return 0;
}

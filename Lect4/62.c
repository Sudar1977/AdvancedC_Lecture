#include <stdio.h>
#include <inttypes.h>

//Hello.

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

uint64_t getHash2(char const *str)
{
    uint64_t hash = 5381;
    int32_t c;
    while ((c = *str++))
        hash = ((hash<<5) + hash) + c; 
    return hash;
}

uint64_t rol(uint64_t n, size_t shift) {
   return (n<<shift) | (n>>(64 - shift));
}

uint64_t getHash3(char const *s) {
    uint64_t result = 0x55555555;
    while (*s) {
        result ^= *s++;
        result = rol(result, 5);
    }
    return result;
}


int main(void)
{
    char s[100] = {0};
    scanf("%s",s);
    printf("hash = %llu\n", getHash(s));
    printf("hash = %llu\n", getHash2(s));
    printf("hash = %llu\n", getHash3(s));
    return 0;
}

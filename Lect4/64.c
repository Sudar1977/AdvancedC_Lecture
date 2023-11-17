#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

/*
hello world
hello world
hello
world
hello
world
world
hello world
abcd
abcd
*/

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

enum {TOTAL_STRINGS=10};
struct strings {
    char s[100];
    uint64_t hash;
} strs[TOTAL_STRINGS];

int cmphashes (const void *a, const void *b) {
   return ( (*(struct strings *)a).hash - (*(struct strings *)b).hash );
}
int main(void)
{
    for(size_t i=0; i<TOTAL_STRINGS; i++) {
        scanf(" %[^\n]",strs[i].s);
        strs[i].hash = getHash(strs[i].s);
    }
    
    for(size_t i=0; i<TOTAL_STRINGS; i++)
        printf("%s: %llu\n",strs[i].s, strs[i].hash);
    qsort(strs, TOTAL_STRINGS, sizeof(struct strings), cmphashes);
    printf("---------------------Sorted strings------------------------\n");
    for(size_t i=0; i<TOTAL_STRINGS; i++)
        printf("%s: %llu\n",strs[i].s, strs[i].hash);
    return 0;
}

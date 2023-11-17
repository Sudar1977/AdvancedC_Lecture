#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>

char s[100]="135";
char text[100]="21354562135";
uint64_t p=10;
uint64_t getHash(char *str, size_t len) {
    uint64_t hash=0;
    char c;
    for(size_t i=0; i<len; i++) {
        c=str[i];
        hash *= p;
        hash +=  (c-'0');
    }
    return hash;
}

int main(void) {
    uint64_t ht[100]={0}, hs, p_pow=1;
    size_t lens=strlen(s), lent=strlen(text);
    hs = getHash(s,lens);
    printf("s hash = %lld\n",hs);
    for(size_t i=1; i<lens; i++)
        p_pow *= p;
    
    ht[0] = getHash(&text[0],lens);
    printf("%lld  ",ht[0]);
    for(size_t i=1; i<lent-lens+1; i++) {
        ht[i] = (ht[i-1]%p_pow)*p + text[lens+i-1]-'0';
        printf("%lld ",ht[i]);
    }
    printf("\n");
    return 0;
}

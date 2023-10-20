#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int numberOfBytesInChar(unsigned char val);
int utf8strlen(char *s);

int main(void){
    char s[] = "Hello world";
    char s2[] = "Привет Мир";
    printf("strlen(s) = %llu\n",strlen(s));
    printf("strlen(s2) = %llu\n",strlen(s2));
    printf("utf8strlen(s) = %d\n",utf8strlen(s));
    printf("utf8strlen(s2) = %d\n",utf8strlen(s2));
    return 0;
}

int numberOfBytesInChar(unsigned char val) {
    if (val < 0x80) 
    {
        return 1;
    } 
    else if (val < 0xE0) 
    {
        return 2;
    } 
    else if (val < 0xF0) 
    {
        return 3;
    } 
    else 
    {
        return 4;
    }
    printf("strlen(s)");
}
int utf8strlen(char *s) {
    char *tmp = s;
    int len = 0;
    while( *tmp ) {
        printf("%#x %d\n",*tmp,numberOfBytesInChar(*tmp));                
        tmp += numberOfBytesInChar(*tmp);
        len++;
// len += (*tmp++ & 0xC0) != 0x80;
// *tmp++ & 0xC0  проверяем шаблон 11xxxxxx
// !=0x80 не является 10xxxxxx 
// или внутренним байтом UTF-8 символа
    }
    return len;
}

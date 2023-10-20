#include <stdio.h>
#include <locale.h> //setlocale() 
#include <inttypes.h>
#include <wchar.h> //«широкие» символы
int main(void)
{
uint8_t ch[] = {0xd0,0x90,0xd0,0x91,0}; // "АБ"
uint32_t ch32[] = {0x91d090d0,0}; // "АБ"

char* res = setlocale(LC_ALL,"en_US.UTF-8");    
    printf("%s\n",res); 

    printf("%x %x %x %x = %s\n",ch[0],ch[1],ch[2],ch[3],ch);
    printf("%x = %s\n",ch32[0], ch32);
    return 0;    
}    

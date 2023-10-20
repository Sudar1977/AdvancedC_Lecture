#include <stdio.h>
#include <locale.h> //setlocale() 
#include <inttypes.h>
#include <wchar.h> //«широкие» символы
int main(void)
{
    char* res = setlocale(LC_ALL,"en_US.UTF-8");    
    printf("%s\n",res);    

    setlocale(LC_ALL,"en_US.UTF-8");
wchar_t str[] = L"БГ";
    printf("%ls\n",str);
    printf("sizeof(wchar_t) = %llu\n",sizeof(wchar_t));
    printf("str[0] = %x\n", str[0]);
    printf("str[1] = %x\n", str[1]);
    return 0;    
}

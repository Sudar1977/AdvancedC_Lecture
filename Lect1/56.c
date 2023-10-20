#include <stdio.h>
#include <locale.h> //setlocale() 
#include <inttypes.h>
#include <wchar.h> //«широкие» символы
int main(void)
{
    char* res = setlocale(LC_ALL,"en_US.UTF-8");
    printf("%s\n",res);
    wchar_t str1[] = L"Привет";
    printf("str1 = %S\n", str1);
    printf("sizeof str1 = %llu\n", sizeof(str1));
    char str2[] = "Привет";
    printf("str2 = %s\n",str2);
    printf("sizeof str2 = %llu\n", sizeof(str2));
    char str3[] = "Hello!";
    printf("str3 = %s\n",str3);
    printf("sizeof str3 = %llu\n", sizeof(str3));
    return 0;
}

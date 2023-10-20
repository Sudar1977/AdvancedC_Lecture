#include <stdio.h>
#include <locale.h> //setlocale() 
#include <inttypes.h>
#include <wchar.h> //«широкие» символы
int main(void)
{
    char* res = setlocale(LC_ALL,"en_US.UTF-8");    
    printf("%s\n",res);    
    printf("%ls\n", L"Hello"); // Напечатать строку из  wchar_t
    printf("%s\n", "Hello"); // Напечатать строку из  char

    wchar_t str[] = L"Привет";
    wprintf(L"%ls\n",str);
    return 0;
}

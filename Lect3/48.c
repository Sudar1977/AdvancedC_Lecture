#include <stdio.h>
#include <string.h>
    
int main(int argc, char **argv) 
{

    char s[]="hello world";
    printf("s[9]=%c\n",s[9]);
    //~ strncpy(s,"erase", 10);
    strcpy(s,"erase"); 
    printf("%s\n", s);
    printf("s[9]=%c\n",s[9]);
    return 0; 
}

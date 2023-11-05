#include <stdio.h>
#include <string.h>

#define QUICKIE_STRCMP(a, b)  (*(a) != *(b) ? \
    (int) ((unsigned char) *(a) - \
           (unsigned char) *(b)) : \
    strcmp((a), (b)))
    
    
int main(int argc, char **argv) 
{ 
    char s1[]="Hello world";  
    char s2[]="Hello world";
    if(!QUICKIE_STRCMP(s1,s2))
        printf("Same\n");
    else
        printf("Not Same\n");        
    return 0; 
}

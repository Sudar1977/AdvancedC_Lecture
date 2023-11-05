#include <stdio.h>
#include <string.h>

#define QUICKIE_STRCMP(a, b)  (*(a) != *(b) ? \
    (int) ((unsigned char) *(a) - \
           (unsigned char) *(b)) : \
    strcmp((a), (b)))
    
    
int main(int argc, char **argv) 
{ 
    char s1[]="Hello world"; 
    if(*s1 == '\0')
    {
        printf("0");        
    }
    else
    {
        printf("%lld\n",strlen(s1));
    }
    
    char s2[100]="";

    if(*s1 == '\0')
    {
        *s2 = '\0';    
    }
    else
    {
        strcpy(s2,s1);        
    }
    printf("%s\n",s2);
    
     
    //~ char s2[]="Hello world";
    //~ if(!QUICKIE_STRCMP(s1,s2))
        //~ printf("Same\n");
    //~ else
        //~ printf("Not Same\n");        
    return 0; 
}


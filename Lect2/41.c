#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
    struct st { char s[10]; } t1, t2;
    strcpy (t1.s, "Hello ");
    t2 = t1;//память будет скопирована
    printf ("%s", t2.s);
    strcpy (t1.s, "world!");
    printf ("%s", t2.s);//не поменялась
    printf ("%s", t1.s);//поменялась
    printf ("%s", t2.s);
    return 0;  
}   

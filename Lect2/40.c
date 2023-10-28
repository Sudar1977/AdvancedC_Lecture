#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) 
{
    struct st { char *s; } t1, t2;
    t1.s = malloc(10);
    strcpy (t1.s, "Hello ");
    t2 = t1;//будет скопирована ссылка на память
    printf ("%s", t2.s);
    strcpy (t1.s, "world!");
    printf ("%s", t2.s);//поменялась
    printf ("%s", t1.s);//поменялась
    return 0;  
}   

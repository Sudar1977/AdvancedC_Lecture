#include <stdio.h>
#include <assert.h>
#include <stdlib.h>


int main(void)
{
    int *p = malloc(sizeof(int)*10000000000000000);
    printf("%x\n",p);
    assert(p!=NULL);
    return 0;  
}



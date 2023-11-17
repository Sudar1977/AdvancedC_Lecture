#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>

#define SIZE 1000

/*
Input text: abcdbbbca
Input word: bc
// s = bc#abcdbbbca
find word in position 2
find word in position 7
*
* 
 */


void zFunction(char *s, int z[])
{
int n =  strlen(s);
    for (int i=1; i<n; i++)
        while ( i+z[i] < n && s[z[i]] == s[i+z[i]])
        {
            //~ printf("i=%d z[i]=%d i+z[i]=%d s[z[i]]=%d s[i+z[i]]=%d\n",i,z[i],i+z[i],s[z[i]],s[i+z[i]]);
            z[i]++;
        }       
}

int min(int a,int b)
{
    return a<b? a:b;
}

void zFunction2 (char *s, int z[])
{
int n = strlen(s);
    for (int i=1, l=0, r=0; i<n; ++i)
    {
        if (i <= r)
            z[i] = min(r-i+1, z[i-l]);
        while (i+z[i] < n && s[z[i]] == s[i+z[i]])
            ++z[i];
        if (i+z[i]-1 > r)
            l = i,  r = i+z[i]-1;
    }
}

void PrintZ(char *s, int z[])
{
int n =  strlen(s);
    for (int i=0; i<n; ++i)
        printf("  %c,",s[i]);
    printf("\n");
    for (int i=0; i<n; ++i)
        printf("%3d," ,z[i]);
    printf("\n");        
}
int main(void)
{
char t[SIZE] = {0};
char p[SIZE] = {0};
char s[SIZE+SIZE] = {0};
int  z[SIZE+SIZE] = {0};
    printf("Input text: ");
    scanf("%s",t);
    //~ zFunction2(t,z);
    //~ PrintZ(t,z);
    printf("Input word: ");
    scanf("%s",p);
    size_t tlen = strlen(t);
    size_t plen = strlen(p);
    sprintf(s,"%s#%s",p,t);
    printf("s=%s\n",s);
    zFunction(s,z);
    //~ PrintZ(s,z);
    for(size_t i=0; i<tlen; i++)
        if(z[i+plen] == plen)
            printf("find word in position %zu\n",i);
    printf("\n");
    return 0;
}

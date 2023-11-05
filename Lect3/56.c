#include <stdio.h>
#include <string.h>
#include <sys/time.h>

// sizeof 16
struct st1{
    int i;
    char c;
    int u;
    char b;
};
// sizeof 12
struct st2{
    int i;
    int u;
    char c;
    char b;
};

int main(int argc, char **argv) 
{
    printf(" %lld %lld\n", sizeof(struct st1),sizeof(struct st2));
    return 0; 
}
    

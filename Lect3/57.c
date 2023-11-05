#include <stdio.h>
#include <stdint.h>

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

// sizeof 1
struct flags{
    uint8_t a : 2;
    uint8_t b : 2;
    uint8_t c : 2;
    uint8_t d : 2;
};

int main(int argc, char **argv) 
{
    printf(" %lld %lld %lld\n", sizeof(struct st1),sizeof(struct st2),sizeof(struct flags));
    return 0; 
}
    

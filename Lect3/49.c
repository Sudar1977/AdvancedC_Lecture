#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <sys/resource.h>
    
int main(int argc, char **argv) 
{
int s[100000]={1,2,3};
int d[100000]={0};
//struct timespec tstop, tstart;

    struct rusage usage;
    struct timeval startu, endu, starts, ends;
    getrusage(RUSAGE_SELF, &usage);
    startu = usage.ru_utime; // измерение в режиме пользователя
    memmove(d,s,100000);
    getrusage(RUSAGE_SELF, &usage);
    endu = usage.ru_utime;// измерение в режиме пользователя
    printf("%ld useconds\n", endu.tv_usec - startu.tv_usec);
    
    getrusage(RUSAGE_SELF, &usage);
    startu = usage.ru_utime; // измерение в режиме пользователя
    memcpy(d,s,100000);
    getrusage(RUSAGE_SELF, &usage);
    endu = usage.ru_utime;// измерение в режиме пользователя
    printf("%ld useconds\n", endu.tv_usec - startu.tv_usec);
    return 0; 
}

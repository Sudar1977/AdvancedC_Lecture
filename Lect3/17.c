#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>
#include <stdio.h>
int main(void) {
    struct rusage usage;
    struct timeval startu, endu, starts, ends;
    int k = 0;
    getrusage(RUSAGE_SELF, &usage);
    startu = usage.ru_utime; // измерение в режиме пользователя
    starts = usage.ru_stime; // измерение в режиме системы
    //int arr[100000]={0}; 
    // Попробуйте раскоментировать и сравнить
    for (int i = 0; i < 10000; i++) {
        for (int j = 0; j < 10000; j++) {
            k += 20;
        }
    }    
    getrusage(RUSAGE_SELF, &usage);
    endu = usage.ru_utime;// измерение в режиме пользователя
    ends = usage.ru_stime;// измерение в режиме системы
    
    printf("Started at user mode: %ld.%d\n", startu.tv_sec, startu.tv_usec);
    printf("Ended at user mode: %ld.%d\n", endu.tv_sec, endu.tv_usec);
    printf("Started at system mode: %ld.%d\n", starts.tv_sec, starts.tv_usec);
    printf("Ended at systme mode: %ld.%d\n", ends.tv_sec, ends.tv_usec);
    printf("Total memory usage: %ld bytes\n",usage.ru_maxrss);
    return 0;
}

#include <stdio.h>

int main(void)
{
    
    int arr[] = {10,20,30,40,50}; // отсортированный массив
    int n = sizeof(arr)/sizeof(arr[0]);
    int findme = 20;  // то что будем искать в массиве
    size_t ifind=0, start=0, end=n-1, middle;
    while(1) 
    {
        middle = (start+end)/2;
        printf("-start=%lld, end=%lld, middle=%lld\n",start, end, middle);
        if( arr[middle] == findme ) 
        {
            ifind=middle;
            break;
        } 
        else if(arr[middle]<findme)
            start = middle;
        else
            end   = middle;
    }
    printf("%lld\n",ifind);

    return 0;
}

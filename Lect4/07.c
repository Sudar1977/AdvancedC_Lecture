#include <stdio.h>

int find_max(int n,int arr[])
{
    size_t imax = 0;
    for(size_t i = 1; i<n; i++) {
        if(arr[i] > arr[imax])
            imax = i;
    }
    return arr[imax];
}

int main(void)
{
    int arr[] = {1,4,5,6,0,7};
    printf("%d\n",find_max(sizeof(arr)/sizeof(arr[0]),arr));
    return 0;
}


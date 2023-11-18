#include <stdio.h>

enum {false=0,true=1};

int main(void)
{
    int arr[] = {10,20,30,40,50,60,70,80,99,99};
    int n = sizeof(arr)/sizeof(arr[0]);
    _Bool hasduplicate = false;
    int counter = 0;
    for(size_t i=0; i<n ; i++)
        for(size_t j=0; j<n ; j++)
        {
            if(i!=j && arr[i]==arr[j]) 
                hasduplicate = 1; 
            counter++;
        }
    printf("n=%d,counter=%d,hasduplicate=%d\n",n,counter,hasduplicate);
        
    return 0;
}

#include <stdio.h>
#include <assert.h>
 
int main()
{
    int n;
    printf("Input natural number: ");
    scanf("%d", &n);
    assert(n > 0); // Ожидаемое число 
    int arr[n];
    return 0;
}

#include <stdio.h>
#include <stdlib.h>
typedef  int(*comparator_type) (const void *, const void *);
/* сравнение двух целых V2 */

//#define float double
//float f = 1.23;

int comparator (const int *a, const int *b) {
    return *a - *b;
}
int main(void)
{
   int a[3] = {3,1,2};
   qsort(a, 3, sizeof (int), (comparator_type) comparator);
   printf("%d,%d,%d",a[0],a[1],a[2]);
   return 0;
}

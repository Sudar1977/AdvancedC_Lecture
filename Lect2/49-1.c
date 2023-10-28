#include <stdio.h>

void print_array(int a[5]) {
/* ОШИБКА! 
   Размер массива теряется */
  int size = sizeof(a)/sizeof(int); 
  for(int i=0; i<size;i++)
    printf("a[%d]=%d ",i,a[i]);
}
int main(void) {
    int a[5] = {1,2,3,4,5};   
    print_array(a);
    return 0;
}

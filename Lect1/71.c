#include <stdio.h> 
#include <time.h> 
double DELAY = 3; 
int main() 
{ 
   clock_t begin = clock(); 
   while((double)(clock() - begin)/CLOCKS_PER_SEC<DELAY) 
   {/*printf("%4d\n",clock());*/ } 
   printf("Hello World %d",CLOCKS_PER_SEC); 
   return 0; 
}

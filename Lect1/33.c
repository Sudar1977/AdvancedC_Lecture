#include <stdio.h>
#include <inttypes.h>

struct s {
    int i;
    float f;
} st = {10,3.14};

int main(void)
{
  struct s  *ps;
  ps = &st; //указатель на структуру
  printf("ps -> i = %d\n",ps->i);
  printf("(*ps).i = %d\n",(*ps).i);
  return 0;
}

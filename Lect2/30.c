#include <stdio.h>

int main(void)
{
  int *p1, p2;
  int n = 30;
  p1 = &n;
  p2 = &n; // ОШИБКА
  return 0;
}

 //main.c
#include<stdio.h>

void new_func1(void);

void func1(void)
{
    printf("\n Inside func1 \n");
    int i = 0;

    for(;i<0xfffffff;i++);
    new_func1();

    return;
}



static void func2(void)
{
    printf("\n Inside func2 \n");
    int i = 0;

    for(;i<0xffffffa;i++);
    return;
}

static int func3(void)
{
    printf("\n Inside func3 \n");
    int i = 0;
    int arr[10000] = {0};

    for(;i<0xffffff0;i++)
        arr[i%10000] = i;
    return arr[0];
}

int main(void)
{
    printf("\n Inside main()\n");
    int i = 0;

    for(;i<0xffffff;i++);
    func1();
    func2();
    printf("func3 = %d\n",func3());
    return 0;
}

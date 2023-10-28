#include <stdio.h>
#include <stdlib.h>

int main(void) {
    double sum=0,v;//сумма и введенное значение
    int arr_size=0, arr_u=0;//размер массива и текущая позиция
    double *arr = NULL;//память под динамический массив
    arr_size = 16;//задаем начальный размер 
    if (!(arr = (double*) malloc(arr_size * sizeof(arr[0]))))//выделяем память
        goto out_of_mem;//не смогли выделить память
    while (scanf("%lf", &v) == 1)//пока приходят данные
    {
        if (arr_u == arr_size)//если достигли конца массива 
        {
           arr_size *= 2;//увеличиваем размер в двое и выделяем память
           if (!(arr = (double*) realloc(arr, arr_size * sizeof(arr[0]))))
               goto out_of_mem;//не смогли выделить память
        }  
        sum += v;//находим сумму
        arr[arr_u] = v;//сохраняем значение в текущую позицию
        arr_u++;//сдвигаем текущую позицию в массиве
    }
    if (!arr_u)//не было введено ни одного значения  
       return 0;
    double average = sum/arr_u;//находим среднее значение
    for(int i=0; i < arr_u; i++) 
        if(arr[i] <= average)//лучше сравнивать с определенной точностью
            printf("%lf\n", arr[i]);//печатаем числа, не превышающие среднее
    free(arr);//освобождаем память
    return 0;//выходим с хорошим кодом завершения  
out_of_mem:
    fprintf(stderr, "Can't allocate memory\n");
    return 1;//выходим с аварийным кодом завершения   
}

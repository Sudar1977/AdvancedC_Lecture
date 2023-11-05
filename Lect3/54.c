 float array[20][100];
int i, j;
//Плохо
for (j = 0; j < 100; j++)
    for (i = 0; i < 20; i++)
        array[i][j] = 0.0;
float array[20][100];
int i, j;
//Хорошо
for (i = 0; i < 20; i++)
    for (j = 0; j < 100; j++)
            array[i][j] = 0.0;

for (size_t i = 0; i < MAX; i++) {
    for (j = 0; j < MAX; j++) {
          a[i][j] = 0.0;
    }
}
for (size_t i = 0; i < MAX; i++) {
    a[i][i] = 1.0;
}

for (i = 0; i < MAX; i++) {
    for (j = 0; j < MAX; j++)
        a[i][j] = 0.0;
    a[i][i] = 1.0;          
}

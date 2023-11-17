    int arr[n];
    size_t imax = 0;
    for(size_t i = 1; i<n; i++) {
        if(a[i] > a[imax])
            imax = i;
    }

    int arr[n] = {10,20,30,40,50}; // отсортированный массив
    int findme = 20;  // то что будем искать в массиве
    size_t ifind=0, start=0, end=n-1, middle;
    while(1) {
        middle = (start+end)/2;
        if( arr[middle] == findme ) {
            ifind=middle;
            break;
        } else if( arr[middle]<findme )
            start = middle;
        else
            end = middle;
    }

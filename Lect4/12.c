    int arr[n] = {10,20,30,40,50,60,70,80,99,99};
    _Bool hasduplicate = false;
    for(size_t i=0; i<n ; i++)
        for(size_t j=0; j<n ; j++)
            if(i!=j && arr[i]==arr[j]) 
                hasduplicate = true; 
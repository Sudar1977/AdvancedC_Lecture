#include <stdio.h>
#include <math.h>

typedef float(*function)(float);

//(-2, -1.5) (-1.5, -1) (-1, -0.5) (-0.5, 0)
float f(float x) {
    return 8*x*x*x*x + 32*x*x*x + 40*x*x + 16*x + 1;
}

float testf(float x){
    return 2; 
}

float calcIntegralSquare(float xl, float xr, size_t n, function f) {
    float sum = 0;
    float h = (xr-xl)/n;
    for(size_t i=0; i<n; i++) {
        sum += f(xl);
        xl  += h;
    }
    return sum*h;
}


int main()
{
    printf("calcIntegralSquare integral %f\n", calcIntegralSquare(0,2,1000,testf));
    return 0;
}





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

float calcIntegralTrap(float xl, float xr, size_t n, function f) {
    float sum = 0;
    float h = (xr-xl)/n;
    for(float x=xl+h; x<xr-h; x+=h) {
        sum += 0.5*h*(f(x)+f(x+h));
    }
    return sum;
}

float calcIntegralSimpson(float xl, float xr, size_t n, function f) {
    float sum = 0;
    float h = (xr-xl)/n;
    for(float x=xl+h; x<xr-h; x+=h) {
        sum += h/6.0*(f(x) + 4.0*f(0.5*(x+x+h)) + f(x+h));
    }
    return sum;
}


int main()
{
    printf("calcIntegralSquare integral %f\n", calcIntegralSquare(0,2,1000,testf));
    printf("calcIntegralSquare = %f\n", calcIntegralSquare(-1.382683,-0.617316,1000,f));
    printf("calcIntegralTrap = %f\n", calcIntegralTrap(-1.382683,-0.617316,1000,f));
    printf("calcIntegralSimpson = %f\n", calcIntegralSimpson(-1.382683,-0.617316,1000,f));    
    return 0;    
}





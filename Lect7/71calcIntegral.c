#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef float(*function)(float);

//(-2, -1.5) (-1.5, -1) (-1, -0.5) (-0.5, 0)
float f(float x) {
    return 8*x*x*x*x + 32*x*x*x + 40*x*x + 16*x + 1;
}

float f1(float x) {
    return 0.6*x + 3;
}
float f2(float x) {
    return pow(x-2,3) - 1;
    //~ return (x-2)*(x-2)*(x-2) - 1;
}
float f3(float x) {
    return 3/x;
}
float sF1(float x) {
    return f1(x)-f3(x);
}
float sF2(float x) {
    return f1(x)-f2(2);
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

float calcIntegralMonteCarlo(float xl, float xr, float fmax, size_t n, function f) {
    size_t in_d = 0;
    float width = fabs(xr-xl), height = fmax;
    for(size_t i=0; i<n; i++) {
        float x = ((float)rand()/(float)RAND_MAX) * width - fabs(xl);
        float y =  (float)rand()/(float)RAND_MAX  * height;
        if(y<f(x))
            in_d++;
    }
    return fabs( (float)in_d / n * width * height );
}

int main()
{
const float points[2][2] = {{0.854102, 3.243931},{3.243931,3.847760}};
function sF[2] = {sF1,sF2};
    printf("calcIntegralSquare integral %f\n", calcIntegralSquare(0,2,1000,testf));
    for(int i=0;i<2;i++)
    {
        printf("calcIntegralSquare = %f\n", calcIntegralSquare(points[i][0],points[i][1],1000,sF[i]));
        printf("calcIntegralTrap = %f\n", calcIntegralTrap(points[i][0],points[i][1],1000,sF[i]));
        printf("calcIntegralSimpson = %f\n", calcIntegralSimpson(points[i][0],points[i][1],1000,sF[i]));
        //~ printf("calcIntegralMonteCarlo = %f\n", calcIntegralMonteCarlo(points[i][0],points[i][1],1000,sF[i]));
    }
    return 0;
}





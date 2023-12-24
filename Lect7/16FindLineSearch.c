#include <stdio.h>
#include <math.h>

typedef float(*function)(float);

float rootFindLineSearch(float xl, float xr, float eps, function f)
{
    float minx = xl, nextstep;
    nextstep = fabs(xr-xl)/(1/eps); //разбиваем на отрезки интервал
    int stepcount=0; 
    for(float x=xl; x<xr; x += nextstep, stepcount++)
    {
        if(fabs(f(x)) < fabs(f(minx)))
            minx = x;
    }
    printf("Find Line Search root for %d steps\n",stepcount);
    return minx;
}

//(-2, -1.5) (-1.5, -1) (-1, -0.5) (-0.5, 0)
float f(float x) {
    return 8*x*x*x*x + 32*x*x*x + 40*x*x + 16*x + 1;
}
 
int main() {
    printf("Line Search root1 = %f\n",rootFindLineSearch(-2,-1.5,0.001,f));
    printf("Line Search root1 = %f\n",rootFindLineSearch(-1.5,-1,0.001,f));
    printf("Line Search root1 = %f\n",rootFindLineSearch(-1,-0.5,0.001,f));
    printf("Line Search root1 = %f\n",rootFindLineSearch(-0.5,0, 0.001,f));
    return 0;    
}

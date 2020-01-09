#include <math.h>
#include "NU32.h" 
#include <cp0defs.h>

int main(void){
    float f1 = 2.07, f2; // four bytes for each float
    long double d1 = 2.07, d2; // eight bytes for each long double
    unsigned int t1,t2,t3,t4,tns;
    _CP0_SET_COUNT(0);
    f2 = cosf(f1);
    t1 = _CP0_GET_COUNT();
    f2 = sqrtf(f1);
    t2 = _CP0_GET_COUNT();
    tns = t2 - t1;
    d2 = cos(d1);
    t3 = _CP0_GET_COUNT();
    tns = t3 - t2;
    d2 = sqrt(d1);
    t4 = _CP0_GET_COUNT();
    tns = t4 - t3;

    return(0);
}
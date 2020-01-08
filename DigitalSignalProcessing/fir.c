#include <math.h>       // C standard library math, for sqrt
#include <stdlib.h>     // for max
#include <string.h>     // for memcpy
#include <dsplib_dsp.h> // for int16, int16c data types and FIR and FFT functions
#include "nudsp.h"

void update_array(double datain, double *dataout,double, int len){
    for (int i = len-1; i > 0; i--){
        dataout[i] = dataout[i-1];
    }
    dataout[0] = datain;
}
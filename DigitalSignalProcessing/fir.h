#ifndef FIR_H__
#define FIR__H__

void update_array(double datain, double *dataout,double, int len);

//to do fir just use nudsp_fir_1024 from the nudsp.h file. even though it says
// 1024, we can arbiratarly change that to another number like 3 and keep 
// a real time thing going. 

#endif FIR__H__
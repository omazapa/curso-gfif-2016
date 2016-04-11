#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#include "libreriaPi.h"

  
int main(int argc, char *argv[])
{
   double t, k = 3.0, l = -1.0;
   int i, s;

   if(argc < 2){
     fprintf(stderr, "%s <no. de iteracines>\n", argv[0]);
     exit(1);
   }
       
   t = 1.0; 
   for(i = 0, s = atoi(argv[1]); i < s; i++)
   {
      funcion(&t, &k, &l);
   }
   t *= 4; 

   printf("Valor de Pi calculado: %1.16f,  Valor de Pi en math.h: %.16f\n", t, M_PI); 
   printf("Diferencia: %.16f\n", fabs(M_PI - t)); 

   return 0; 
}

/***********************************************************************
 *  Program Name      : read_parm.c
 *  Type              : Subroutine
 *  Function          : Program reads in product limit parameters 
 *  Input Files       : input.dat
 *  Output Files      : None
 *  Subroutine Called : None
 *  Called by         : BSWATH.c
 *
 * Add snowR limits and change the name of the function
 ***********************************************************************/
#include "BSWATH_INCLUDE.h"
#include "ESWATH.h"

/*********************************************************/
void read_parm_nl(FILE *fparm)
{
   char          ch[80];
   float         lwat, upat;

/* lower/upper limits for Rain Rate */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);  
   limit_Prod.RR_lower = lwat;
   limit_Prod.RR_upper = upat;

/* lower/upper limits for SNowC */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);
   limit_Prod.SNowC_lower = lwat;
   limit_Prod.SNowC_upper = upat;

/* lower/upper limits for IWP */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);
   limit_Prod.IWP_lower = lwat;
   limit_Prod.IWP_upper = upat;

/* lower/upper limits for De */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);
   limit_Prod.De_lower = lwat;
   limit_Prod.De_upper = upat;

/* lower/upper limits for SWE */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);
   limit_Prod.SWE_lower = lwat;
   limit_Prod.SWE_upper = upat;

/* lower/upper limits for SnowR */
   fgets(ch,80,fparm);
   sscanf(ch, "%f %f", &lwat, &upat);
   limit_Prod.SnowR_lower = lwat;
   limit_Prod.SnowR_upper = upat;

   printf("\n---------------------------------------\n");
   printf(" Lower and upper limits for: \n");
   printf("---------------------------------------\n"); 
   printf("RR    ==> %5.1f/%5.1f\n", limit_Prod.RR_lower, limit_Prod.RR_upper);
   printf("SNowC  ==> %5.1f/%5.1f\n", limit_Prod.SNowC_lower, limit_Prod.SNowC_upper);
   printf("IWP   ==> %5.1f/%5.1f\n", limit_Prod.IWP_lower, limit_Prod.IWP_upper);
   printf("De   ==> %5.1f/%5.1f\n", limit_Prod.De_lower, limit_Prod.De_upper);
   printf("SWE   ==> %5.1f/%5.1f\n", limit_Prod.SWE_lower, limit_Prod.SWE_upper);
   printf("SnowR   ==> %5.1f/%5.1f\n", limit_Prod.SnowR_lower, limit_Prod.SnowR_upper);

   fclose(fparm);

}  /* end of read_parm.c */

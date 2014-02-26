/***********************************************************************
 *  Program Name      : snowfall_rate.c
 *  Type              : Subroutine
 *  Function          : Program calculates snowfall rate (100 * mm/hr)  
 *  Input Files       : None
 *  Output Files      : None
 *  Subroutine Called : onelyr.f90
 *  Called by         : calprod.c
 *
 ***********************************************************************/
#include "BSWATH_INCLUDE.h"
#include "ESWATH.h"

extern void onelyr_(short int *, char[],float[],float *,float *,float *,float[],float *,float *,float *,float *,float *,int,int,int);
//extern double d1match();
//extern float pythag();

/****************************************************/
void snowfall_rate(short int iscan)
{
   char         fname[] = "../data/control/snowShape_sphere_optics.dat";
   char		lstag;
   short int    ifov, ilat, ilon, hr, min, itb, i, ii, indx;
   int		len_fname;
   float 	alza, blza, interpt;
   float	iwprtm, de, tc, tsg, tpwg, bsnowr;
   float        a23, a31, a50, a89, b89, b150, b182, b180, b176;
   float        blat, blon;
   float        tb_nc[RTMCHAN], emiss[RTMCHAN];

//   printf("Enter snowfall_rate.c \n");

   for (ifov = 0; ifov < NUMSPOT_B; ifov++)
   {

// Initialize snowfall rate to 0 with the same flags as the rain rate field
     if(rr[iscan][ifov] > 0)
       snowr[iscan][ifov] = 0;
     else
       snowr[iscan][ifov] = rr[iscan][ifov];

     if(rr[iscan][ifov] == 1) // if there is snowfall 
     {
       a23 = at_AB[iscan][ifov][0];
       a31 = at_AB[iscan][ifov][1];
       a50 = at_AB[iscan][ifov][2];
       a89 = at_AB[iscan][ifov][14];
       alza = lza_AB[iscan][ifov];

       b89 = at[iscan][ifov][0];
       b150 = at[iscan][ifov][1];
       b182 = at[iscan][ifov][2];
       b180 = at[iscan][ifov][3];
       b176 = at[iscan][ifov][4];
       blza = lza[iscan][ifov];
       blat = lat[iscan][ifov];
       blon = lon[iscan][ifov];

       tb_nc[0] = a23;
       tb_nc[1] = a31;
       tb_nc[2] = a50;
       tb_nc[3] = a89;
       tb_nc[4] = b150;
       tb_nc[5] = b176;

       lstag = stype[iscan][ifov];

       if(lstag == 1 && a23 > 0 && b89 > 0) /* over land and good data */
       {
 /*---------------------------------------
 * Calculate Tsfc and TPW from AVN data 
 * as initial guesses for the RTM
 *---------------------------------------*/
         ilat = 90.0 - blat + 0.5;
         ilon = 180.0 + blon + 0.5;
         if(ilat < 0)
           ilat = 0;
         if(ilat > NUMROW_AVN - 1)
           ilat = NUMROW_AVN - 1;
         if(ilon < 0)
           ilon = 0;
         if(ilon > NUMCOL_AVN - 1)
           ilon = NUMCOL_AVN - 1;

         hr = hour[iscan];
         min = minute[iscan];

         indx = -1;
         if(num_avn == 2)
         {
           ii = 0;
           indx = 0;
         }
         else if(num_avn == 3)
         {
           if(avnhr[1] == 24 && avnhr[2] == 3 && hr < 3)
           {
             ii = 1;
             indx = 0;
           }
           else
           {
             for(i = 0; i < 2; i++)
             {
               if(hr >= avnhr[i] && hr < avnhr[i+1])
               {
                 ii = i;
                 indx = 0;
               }
             }
           }
         }

         if(avnhr[ii] == 24 && hr < 3)
           interpt = (hr + min/60.)/3.;
         else
           interpt = (hr - avnhr[ii] + min/60.)/3.;

         tsg = ts_avn[ii][ilat][ilon] + (ts_avn[ii+1][ilat][ilon]-ts_avn[ii][ilat][ilon])*interpt;
         tpwg = tpw_avn[ii][ilat][ilon] + (tpw_avn[ii+1][ilat][ilon]-tpw_avn[ii][ilat][ilon])*interpt;

/*------------------------------------*
 * Call one-layer RTM (in Fortran 90) 
 *------------------------------------*/
         len_fname=strlen(fname);

	 /**********************
	 printf("pre onelyr position scan %i fov  %i\n",iscan+1,ifov+1);
if(iscan == 1209 && ifov == 0)
 printf("OKOK1 %f %f %f %f %f %f %f %f %f %f %f\n",tb_nc[0],tb_nc[1],tb_nc[2],tb_nc[3],tb_nc[4],tb_nc[5],b89,alza,blza,tsg,tpwg);
	 ***********************************/

         onelyr_(&load_indx,fname,tb_nc,&b89,&alza,&blza,emiss,&tsg,&tc,&iwprtm,&tpwg,&de,len_fname,RTMCHAN,RTMCHAN);
	 load_indx = 1;

	 /****************************
	   if(iscan == 1209 && ifov == 0) 
           printf("OKOK2 %f %f %f \n",iwprtm,de,tc);
	   printf("%f %f %f %f %f %f \n",iwp_tb[0],snowr_tb[0],iwp_tb[1],snowr_tb[1],iwp_tb[2],snowr_tb[2]);
	   

           printf("post onelyr iwprtm= %f\n",iwprtm);
	 ************************************************/

      
/*------------------------------------*
 * Compute snowfall rate  
 *------------------------------------*/
         if(iwprtm < limit_Prod.IWP_lower)
           snowr[iscan][ifov] = INDETERM_SFR_NONCONV;

         else if(iwprtm > limit_Prod.IWP_upper)
           snowr[iscan][ifov] = INDETERM_SFR_NONCONV;

         else
         {
           for(itb = 0; itb < MAX_TB-1; itb++)
           {
             if(iwprtm >= iwp_tb[itb] && iwprtm < iwp_tb[itb+1])
               bsnowr = snowr_tb[itb]+(snowr_tb[itb+1]-snowr_tb[itb])*(iwprtm-iwp_tb[itb])/(iwp_tb[itb+1]-iwp_tb[itb]);
             else if(iwprtm >= iwp_tb[MAX_TB-1])
               bsnowr = snowr_tb[MAX_TB-1];
           }

           if(bsnowr < limit_Prod.SFR_lower)
             bsnowr = limit_Prod.SFR_lower;
           else if(bsnowr > limit_Prod.SFR_upper)
             bsnowr = limit_Prod.SFR_upper;

   	   snowr[iscan][ifov] = bsnowr * SFR_SCAL;
	   /************
	   if (iscan == 1209 && ifov == 0) 
	     printf("snowr %f %hi\n", bsnowr,snowr[iscan][ifov]);
	   *********************/
         }

       } // end of lstag check

     } // end of (yes/no) snowfall check

   } // end of ifov loop

} /* end of snowfall_rate.c */ 

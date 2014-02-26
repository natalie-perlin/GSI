/***********************************************************************
 *  Program Name      : def_data.c
 *  Type              : Subroutine
 *  Function          : Program defines the data fields for AMSU-B 
 *			swath file (in HDF-EOS format). Data fields
 *			do not include products yet. 
 *  Input Files       : None
 *  Output Files      : SWATH_MP1_MHS_Syyddd_sttttt_Eyyddd_ettttt.hdf
 *                      (yy: year, ddd: julian day, sttttt: starting time,
 *                       ettttt: ending time) 
 *  Subroutine Called : None
 *  Called by         : sw_def.c
 *
 *  Modification History:
 *      Date       Version         Description of Changes
 *     ------     ---------       ------------------------
 *   10/02/2000      v2.0
 ***********************************************************************/
#include "MHS2HDF_INCLUDE.h"
#include "ESWATH.h"

/*******************************************************************/
long int def_data(long int sw_id)
{ 
   long int   status, result = 0, i;
   char       chan_name[9];
   int	      compparm = 5;

/*--------------------------------------------------*
 * Set field compression for all subsequent field 
 * definitions
 *--------------------------------------------------*/
   status = SWdefcomp(sw_id, HDFE_COMP_DEFLATE, &compparm);
   printf ("def_data/swdefcomp %ld\n", status);
   result = result + status;

/*--------------------------------------------------*
 * Define ancillary fields
 *--------------------------------------------------*/
   status = SWdefdatafield(sw_id, "Sfc_type", "Scanline,Field_of_view",
            DFNT_INT8, HDFE_NOMERGE);
   printf ("def_data/define datafield Surface_type %ld\n", status);
   result = result + status;

   status = SWdefdatafield(sw_id, "Orbit_mode", "Scanline",
            DFNT_INT8, HDFE_NOMERGE);
   printf ("def_data/define datafield Orbit_mode %ld\n", status);
   result = result + status;

   status = SWdefdatafield(sw_id, "LZ_angle", "Scanline,Field_of_view",
            DFNT_FLOAT32, HDFE_NOMERGE);
   printf ("def_data/define datafield LZ_angle  %ld\n", status);
   result = result + status;

   status = SWdefdatafield(sw_id, "SZ_angle", "Scanline,Field_of_view",
            DFNT_FLOAT32, HDFE_NOMERGE);
   printf ("def_data/define datafield SZ_angle  %ld\n", status);
   result = result + status;

/*--------------------------------------------------*
 * Define AT fields
 *--------------------------------------------------*/
   for(i = 0; i < NUMCHAN_M; i++)
   {
     sprintf(chan_name, "Chan%ld_AT", i+1); 
     status = SWdefdatafield(sw_id, chan_name, "Scanline,Field_of_view",
            DFNT_INT16, HDFE_NOMERGE);
     printf ("def_data/define datafield Chan%ld_AT %ld\n", i+1, status);
     result = result + status;
   }

   status = SWdefcomp(sw_id, HDFE_COMP_NONE, NULL);
   printf ("sdef_data/swdefcomp %ld\n", status);
   result = result + status;

   return(result);
 
}/*  end of def_data.c  */

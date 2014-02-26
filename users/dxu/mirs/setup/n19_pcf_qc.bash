
####################################################################################################
#
#
#   S E C T I O N   O F   D A T A   A N D   P A T H S
#
#
####################################################################################################

#-------------------------------------------------------------------------------
#        Satellite, sensor and default date used in GUI
#-------------------------------------------------------------------------------
satId=n19
sensor1=amsua
sensor2=mhs
date=2006-02-01

#-------------------------------------------------------------------------------
#        Major root paths
#-------------------------------------------------------------------------------
rootPath=/disk1/pub/wchen/mirs_qc_r2495
dataPath=${rootPath}/data
binPath=${rootPath}/bin
logPath=${rootPath}/logs
IDL=/usr/local/bin/idl
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/intel/lib/intel64

#-------------------------------------------------------------------------------
#        Research data & Paths
#-------------------------------------------------------------------------------
researchDataPath=/net/orbit006L/home/sidb/ResearchData
fwdPath=${researchDataPath}/FwdSimulOutputs
out1dvarPath=${researchDataPath}/1dvarOutputs
monitorFile=${researchDataPath}/IterProcessMonitor/Monitoring.dat
modelNonErrPath=${researchDataPath}/ModelErrStats/amsua_mhs

#-------------------------------------------------------------------------------
#        External data & Paths
#-------------------------------------------------------------------------------
externalDataPath=${dataPath}/ExternalData
rdrSensor1Path=${externalDataPath}/rdr/${satId}_${sensor1}_${sensor2}
rdrSensor2Path=${externalDataPath}/rdr/${satId}_${sensor1}_${sensor2}
rdrOrbitPath=${externalDataPath}/rdr/OrbitalMode
nwpGdasGridPath=${externalDataPath}/gridNWP_analys
nwpEcmwfGridPath=${externalDataPath}/gridNWP_analys
nwpGfsGridPath=${externalDataPath}/gridNWP_analys

#-------------------------------------------------------------------------------
#        Static data & Paths
#-------------------------------------------------------------------------------
staticDataPath=${dataPath}/StaticData
instrumentPath=${staticDataPath}/InstrConfigInfo
instrumentSensor1File=${instrumentPath}/InstrConfig_${satId}_${sensor1}.dat
instrumentSensor2File=${instrumentPath}/InstrConfig_${satId}_${sensor2}.dat
instrumentSensor1Sensor2File=${instrumentPath}/InstrConfig_${satId}_${sensor1}_${sensor2}.dat
topographyFile=${staticDataPath}/Topography/topography.bin_sgi
antennaPath=${staticDataPath}/AntennaPatterns
antennaSensor1File=${antennaPath}/${satId}_${sensor1}_antennaPattern.dat
antennaSensor2File=${antennaPath}/${satId}_${sensor2}_antennaPattern.dat
tune1File=${staticDataPath}/TuningData/TunParams_${satId}_${sensor1}_${sensor2}.in
tune2File=${staticDataPath}/TuningData/TunParams_${satId}_${sensor1}_${sensor2}_2.in
nedtNominalFile=${staticDataPath}/NominalNedts/${satId}_NoiseFile.dat
covBkgAtm1File=${staticDataPath}/CovBkgStats/CovBkgMatrxTotAtm_all.dat
covBkgAtm2File=${staticDataPath}/CovBkgStats/CovBkgMatrxTotAtm_all.dat
covBkgSfc1File=${staticDataPath}/CovBkgStats/CovBkgMatrxTotSfc_all_${satId}_${sensor1}_${sensor2}.dat
covBkgSfc2File=${staticDataPath}/CovBkgStats/CovBkgMatrxTotSfc_all_${satId}_${sensor1}_${sensor2}.dat
spcCoeffFile=${staticDataPath}/CRTMFiles/${satId}_${sensor1}_${sensor2}_SpcCoeff.bin
tauCoeffFile=${staticDataPath}/CRTMFiles/${satId}_${sensor1}_${sensor2}_TauCoeff.bin
siceEmissCatalogFile=${staticDataPath}/EmissCatalog/SeaIceEmissCatalog_${satId}_${sensor1}_${sensor2}.dat
snowEmissCatalogFile=${staticDataPath}/EmissCatalog/SnowEmissCatalog_${satId}_${sensor1}_${sensor2}.dat
cldOptPropFile=${staticDataPath}/CRTMFiles/mw_cloud_opt.dat

#-------------------------------------------------------------------------------
#        Semi-Static data & Paths
#-------------------------------------------------------------------------------
semiStaticDataPath=${dataPath}/SemiStaticData
biasPath=${semiStaticDataPath}/biasCorrec
regressPath=${semiStaticDataPath}/regressAlgors
regressCoeffOceanClwFile=${regressPath}/Oc_regressCoeffs_${satId}_clw.dat
regressCoeffSeaIceClwFile=${regressPath}/SeaIce_regressCoeffs_${satId}_clw.dat
regressCoeffLandClwFile=${regressPath}/Land_regressCoeffs_${satId}_clw.dat
regressCoeffSnowClwFile=${regressPath}/Snow_regressCoeffs_${satId}_clw.dat
regressCoeffOceanTskinFile=${regressPath}/Oc_regressCoeffs_${satId}_tskin.dat
regressCoeffSeaIceTskinFile=${regressPath}/SeaIce_regressCoeffs_${satId}_tskin.dat
regressCoeffLandTskinFile=${regressPath}/Land_regressCoeffs_${satId}_tskin.dat
regressCoeffSnowTskinFile=${regressPath}/Snow_regressCoeffs_${satId}_tskin.dat
regressCoeffOceanTpwFile=${regressPath}/Oc_regressCoeffs_${satId}_tpw.dat
regressCoeffSeaIceTpwFile=${regressPath}/SeaIce_regressCoeffs_${satId}_tpw.dat
regressCoeffLandTpwFile=${regressPath}/Land_regressCoeffs_${satId}_tpw.dat
regressCoeffSnowTpwFile=${regressPath}/Snow_regressCoeffs_${satId}_tpw.dat
regressCoeffOceanEmFile=${regressPath}/Oc_regressCoeffs_${satId}_em.dat
regressCoeffSeaIceEmFile=${regressPath}/SeaIce_regressCoeffs_${satId}_em.dat
regressCoeffLandEmFile=${regressPath}/Land_regressCoeffs_${satId}_em.dat
regressCoeffSnowEmFile=${regressPath}/Snow_regressCoeffs_${satId}_em.dat
regressCoeffOceanWvFile=${regressPath}/Oc_regressCoeffs_${satId}_wv.dat
regressCoeffSeaIceWvFile=${regressPath}/SeaIce_regressCoeffs_${satId}_wv.dat
regressCoeffLandWvFile=${regressPath}/Land_regressCoeffs_${satId}_wv.dat
regressCoeffSnowWvFile=${regressPath}/Snow_regressCoeffs_${satId}_wv.dat
regressCoeffOceanTempFile=${regressPath}/Oc_regressCoeffs_${satId}_temp.dat
regressCoeffSeaIceTempFile=${regressPath}/SeaIce_regressCoeffs_${satId}_temp.dat
regressCoeffLandTempFile=${regressPath}/Land_regressCoeffs_${satId}_temp.dat
regressCoeffSnowTempFile=${regressPath}/Snow_regressCoeffs_${satId}_temp.dat
regressCoeffDesertFile=${regressPath}/Desert_regressCoeffs_${satId}.dat
biasFileToUse=${biasPath}/biasCorrec_${satId}.dat
calibBiasFitFile=${biasPath}/calibBiasFit_${satId}.dat
calibDTRlutFile=${biasPath}/calibDTRlut_${satId}.dat

#-------------------------------------------------------------------------------
#        Testbed data & Paths
#-------------------------------------------------------------------------------
testbedDataPath=${dataPath}/TestbedData
nedtPath=${testbedDataPath}/nedt
nedtSensor1Path=${nedtPath}/${satId}_${sensor1}
nedtSensor2Path=${nedtPath}/${satId}_${sensor2}
nedtSensor1Sensor2Path=${nedtPath}/${satId}_${sensor1}_${sensor2}
edrPath=${testbedDataPath}/Outputs/edr/${satId}_${sensor1}_${sensor2}
depPath=${testbedDataPath}/Outputs/dep/${satId}_${sensor1}_${sensor2}
gridPath=${testbedDataPath}/Outputs/grid/${satId}_${sensor1}_${sensor2}
figsPath=${testbedDataPath}/Outputs/figs/${satId}_${sensor1}_${sensor2}
perfsMonitorPath=${testbedDataPath}/PerfsMonitoring/${satId}_${sensor1}_${sensor2}
logFile=${logPath}/${satId}_logFile

#-------------------------------------------------------------------------------
#        Dynamic data & Paths
#-------------------------------------------------------------------------------
dynamicDataPath=${testbedDataPath}/DynamicData
tdrPath=${dynamicDataPath}/tdr
tdrSensor1Path=${tdrPath}/${satId}_${sensor1}
tdrSensor2Path=${tdrPath}/${satId}_${sensor2}
sdrPath=${dynamicDataPath}/sdr
sdrSensor1Path=${sdrPath}/${satId}_${sensor1}
sdrSensor2Path=${sdrPath}/${satId}_${sensor2}
fmsdrPath=${dynamicDataPath}/fmsdr/${satId}_${sensor1}_${sensor2}
choppPath=${dynamicDataPath}/fmsdrchopp/${satId}_${sensor1}_${sensor2}
nwpAnalysPath=${dynamicDataPath}/nwp_analys/${satId}_${sensor1}_${sensor2}
fwdAnalysPath=${dynamicDataPath}/fwd_analys/${satId}_${sensor1}_${sensor2}
regressRetrPath=${dynamicDataPath}/regress_retr/${satId}_${sensor1}_${sensor2}

#-------------------------------------------------------------------------------
#        Control Files
#-------------------------------------------------------------------------------
controlDataPath=${dataPath}/ControlData
rdr2tdrSensor1ControlFile=${controlDataPath}/${satId}_${sensor1}_rdr2tdr
rdr2tdrSensor2ControlFile=${controlDataPath}/${satId}_${sensor2}_rdr2tdr
mergeNedtControlFile=${controlDataPath}/${satId}_mergeNEDT
tdr2sdrSensor1ControlFile=${controlDataPath}/${satId}_${sensor1}_tdr2sdr
tdr2sdrSensor2ControlFile=${controlDataPath}/${satId}_${sensor2}_tdr2sdr
fmControlFile=${controlDataPath}/${satId}_${sensor1}_${sensor2}_fm
fmsdr2edrControlFile=${controlDataPath}/${satId}_CntrlConfig_1dvar
grid2nwpControlFile=${controlDataPath}/${satId}_${sensor1}_${sensor2}_colocNWPwRAD
fwdControlFile=${controlDataPath}/${satId}_cntrl_fwd
regressControlFile=${controlDataPath}/${satId}_ApplyRegress
choppControlFile=${controlDataPath}/${satId}_Chopp
mergeEdrControlFile=${controlDataPath}/${satId}_MergeEDR
vippControlFile=${controlDataPath}/${satId}_Vipp
gridControlFile=${controlDataPath}/${satId}_Grid
nwpGridControlFile=${controlDataPath}/${satId}_NWPGrid
fwdGridControlFile=${controlDataPath}/${satId}_FWDGrid
biasGridControlFile=${controlDataPath}/${satId}_BiasGrid
biasCompuControlFile=${controlDataPath}/${satId}_Inputs4BiasComputation
biasVerifControlFile=${controlDataPath}/${satId}_Inputs4BiasVerification
regressGenControlFile=${controlDataPath}/${satId}_Inputs4RegressGen
modifyNedtControlFile=Dummy
figsGenControlFile=${controlDataPath}/${satId}_Inputs4FigsGener

#-------------------------------------------------------------------------------
#        File List
#-------------------------------------------------------------------------------
inputDataPath=${dataPath}/InputsData
rdrSensor1List=${inputDataPath}/${satId}_${sensor1}_rdrFiles
rdrSensor2List=${inputDataPath}/${satId}_${sensor2}_rdrFiles
tdrSensor1List=${inputDataPath}/${satId}_${sensor1}_tdrFiles
tdrSensor2List=${inputDataPath}/${satId}_${sensor2}_tdrFiles
sdrSensor1List=${inputDataPath}/${satId}_${sensor1}_sdrFiles
sdrSensor2List=${inputDataPath}/${satId}_${sensor2}_sdrFiles
fmsdrList=${inputDataPath}/${satId}_fmsdrFiles
fmsdr4BiasList=${inputDataPath}/${satId}_fmsdrFiles_4Bias
fmsdr4ChoppList=${inputDataPath}/${satId}_fmsdrFiles_4Chopping
fmsdr4NwpList=${inputDataPath}/${satId}_fmsdrFiles_4nwp
fmsdr4BiasList=${inputDataPath}/${satId}_fmsdrFiles_4Bias
fmsdr4RegressList=${inputDataPath}/${satId}_fmsdrFiles_4regress
fmsdr4ApplyRegressList=${inputDataPath}/${satId}_fmsdrFiles_4ApplyRegress
edrList=${inputDataPath}/${satId}_edrFiles
edr4BiasList=${inputDataPath}/${satId}_edrFiles_4Bias
dep4BiasList=${inputDataPath}/${satId}_depFiles_4Bias
edr4MergeList=${inputDataPath}/${satId}_FullOrbitEDR_4Merging
depList=${inputDataPath}/${satId}_depFiles
nedtList=${inputDataPath}/${satId}_nedtDirs_${sensor1}_${sensor2}
nedtSensor1List=${inputDataPath}/${satId}_nedtDirs_${sensor1}
nedtSensor2List=${inputDataPath}/${satId}_nedtDirs_${sensor2}
gridSfcNwpAnalysList=${inputDataPath}/${satId}_sfcNWPanalys
gridAtmNwpAnalysList=${inputDataPath}/${satId}_atmNWPanalys
nwpAnalysList=${inputDataPath}/${satId}_NWPanalysFiles
nwpAnalysRetrList=${inputDataPath}/${satId}_NWPanalysFiles_4retr
nwpAnalys4BiasList=${inputDataPath}/${satId}_NWPanalysFiles_4Bias
nwpAnalys4RegressList=${inputDataPath}/${satId}_NWPanalysFiles_4Regress
fwdAnalys4BiasList=${inputDataPath}/${satId}_FWDanalysSimulFiles_4Bias


####################################################################################################
#
#
#   S E C T I O N   O F   A P P L I C A T I O N S   A N D   P R O C E S S E S
#
#
####################################################################################################

#-------------------------------------------------------------------------------
#        Source Directories
#-------------------------------------------------------------------------------
rdr2tdrSensor1Src=${rootPath}/src/testbed/rdr2tdr
rdr2tdrSensor2Src=${rootPath}/src/testbed/rdr2tdr
mergeNedtSrc=${rootPath}/src/testbed/mergeNEDTofDiffInstr
tdr2sdrSrc=${rootPath}/src/testbed/tdr2sdr
fmSrc=${rootPath}/src/testbed/fm
choppSrc=${rootPath}/src/testbed/chopp
fmsdr2edrSrc=${rootPath}/src/1dvar
mergeEdrSrc=${rootPath}/src/testbed/mergeEDR
vippSrc=${rootPath}/src/testbed/vipp
gridSrc=${rootPath}/src/testbed/grid
nedtMonitorSrc=${rootPath}/src/testbed/nedtMonitoring
nwpGenAnalysSrc=${rootPath}/src/testbed/nwp
fwdSrc=${rootPath}/src/fwd
fwd2hdf5Src=${rootPath}/src/testbed/fwd2hdf5
determineBiasSrc=${rootPath}/src/testbed/biasGenerAndMonit
regressAlgSrc=${rootPath}/src/testbed/regressAlgors
applyRegressAlgSrc=${rootPath}/src/testbed/retrRegress


####################################################################################################
#
#
#   S E C T I O N   O F   S W I T C H E S (W H I C H   A P P L I C A T I O N   T O   R U N)
#
#
####################################################################################################

step_rdr2tdrSensor1=0	#RDR->TDR (Sensor1)
step_rdr2tdrSensor2=0	#RDR->TDR (Sensor2)
step_mergeNedt=0	#MERGE NEDTs (Sensor1 and Sensor2)
step_tdr2sdrSensor1=0	#TDR->SDR (Sensor1)
step_tdr2sdrSensor2=0	#TDR->SDR (Sensor2)
step_fm=0	#FOOTPRINT MATCHING
step_nwp=1	#CREATE NWP SCENE (GDAS)
step_fwd=1	#USE FWD OPERATOR ON NWP SCENE
step_biasGen=1	#GENERATE A NEW TB EC
step_choppRadFiles=0	#CHOPPING RADIANCE FILES FOR MULTIPLE PROCESS SUBMISSION
step_externalDataFromRegress=0	#USE OF REGRESSION ALGORIHMS TO GENERATE EXTERN DATA
step_fmsdr2edr=0	#FMSDR->EDR
step_mergeEdr=0	#MERGE THE MINI EDR FILES INTO A FULL ORBITAL EDR FILE 
step_vipp=0	#VERTICAL INTEGRATION AND POST PROCESSING
step_grid=0	#Gridded LEVEL III DATA GENERATION
step_figsGen=0	#FIGS GENERATION
step_biasFigsGen=0	#BIAS FIGS GENERATION
step_dataMonitor=0	#MONITORING OF DATA QUALITY
step_clean=0	#DISK CLEANING/PURGING


####################################################################################################
#
#
#   S E C T I O N  OF  C O N T R O L L I N G  F L A G S
#
#
####################################################################################################

processMode=1	#0:Orbit processing  1:Daily processing
sensorId=4	#1:N18,2:MetopA,3:F16,4:N19,5:F18,6:NPP,7:AMSRE,8:FY3-MWRI,9:TRMM/TMI
outFMAccuracy=0	#Flag to output of the FM accuracy metric (DeltaTB @89)
prefixFMAccuracy=QCcheck	#Prefix of file(s) w FM-acuracy metric (only if outFMaccur=1)
nProfs2Retr=1000000	#Maximum number of profiles to process in retrieval
nProfs2Fwd=1000000	#Maximum number of profiles to simulate using the fwd operator (over analyses)
nAttempts=2	#Number of retrieval attempts in case of non-convergence 
fmType=0	#POES:0(low),1(high); DMSP:0(UAS-lowest),1(LAS),2(ENV),3(IMG-highest); TRMM:-1(coarse),0(low),1(high)
addDeviceNoise=0	#=1 Flag to add noise to the fwd simulations (over analyses), =0->no Noise added 
monitorIterative=0	#=1->Yes, monitor iterative process, 	     =0-> Do not
monitorRetrieval=0	#=1->Yes, on-screen-monitoring of retrieval ,  =0-> Do not.
monitorFwd=0	#=1->Yes, on-screen-monitoring of fwd-simul ,  =0-> Do not.
externalDataAvailable=0	#=1->Ext data available, use ExtDataUse =0-> No Ext data available,
externalDataSrc=2	#Source of external Data (only if externDataAvailable=1). =1-> ANALYS, =2->REGRESS
nwpGdasUse=0	#=1->To Use GDAS in NWP Collocation,  =0-> Not Use GDAS
nwpEcmwfUse=0	#=1->To Use ECMWF in NWP Collocation, =0-> Not Use ECMWF
nwpGfsUse=1	#=1->To Use GFS in NWP Collocation,  =0-> Not Use GFS
geoLimit=0	#=0-> Process all data. =1-> only in the lat/lon box. 2->Only ocean, 3->Only land
minLat=-90.	#Min latitude of data to be processed (only if GeogrLimits=1)
maxLat=90.	#Max latitude of data to be processed (only if GeogrLimits=1)
minLon=-180.	#Min longitude of data to be processed (only if GeogrLimits=1)
maxLon=180.	#Max longitude of data to be processed (only if GeogrLimits=1)
cend=2	#Orbit(s) 2 process: 0:ascending, 1:descending, 2:both
nDaysBack=2	#TB-Bias assessed w. data from NdayBack, due to reference data delay. NdayBack between 0 & mxDaysAllowed-1
maxDaysArchived=0	#Max number of days allowed for archiving (purged regularily)
dayUsed4Bias=2006_02_01	#Extension used to determine which bias to use in the ec process.
dayUsed4Alg=2006_02_01	#Extension used to determine which algorithms to use in the externDataFromRegress step
nOrbits2Process=1000000	#Number of orbits/suborbits to process: overwrites the existing number of orbits
tdrFormat=1	#Format of TDR (depends on the RDR decoder at hand):0->ascii, 1->binary
gifDensity=100	#density used when converting PS files into Gif images
gridFactor=4	#grid factor used when gridding level III data
nScanLineSensor1Skip=0	#Number of sensor1 scan lines to skip upfront (to accomodate geolocation issues) 
nScanLineSensor2Skip=2	#Number of sensor1 scan lines to skip upfront (to accomodate geolocation issues) 
scanLineIndexSensor2TimeColloc=2	#Sensor2 ScanLine index (1,2 or 3) that corresponds in time to sensor1
fwdCloudOffOrOn=0	#Set Hydrometeors to Zero or retain values (FWD step only).  0->Set to Zero, 1->Retain
biasComputeMethod=1	#Method for computing the bias. 0->Simple bias, 1->Histogram adjustment
regressionBiasApplyDomain=-2	#Domain of application of bias(regression).-2 nowhere, -1->everywhere
nChoppedFilesPerOrbit=10	#Number of chopped sub-orbits per orbit. If 1 no chopping is done
retrOnOrbitOrSubOrbit=0	#Switches between performing retr on full-orbits (0) or chopped ones (1)
retrOnWhichSDR=1	#Switches between retr on uncorrected TBs (1) or NWP-based simuls(2)
fwdMatrix2Use=0	#Switches fwd model error matrix (0:dynamically generated by compar with simul, 1:Non-error)
makeOrNot=0	#Switches between making (1) the executables on the fly or not (0)
useCPU=1	#0->Use one CPU; 1->Use all CPUs; 2->Use QSUB
makeClean=0	#During cleaning step, do we want make-clean as well (=1) or not (=0)

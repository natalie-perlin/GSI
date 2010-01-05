# Define namelist for global run

export global_T62_namelist=" 

 &SETUP
   miter=2,niter(1)=100,niter(2)=150,
   niter_no_qc(1)=50,niter_no_qc(2)=0,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=82,qoption=2,
   factqmin=0.005,factqmax=0.005,deltim=$DELTIM,
   ndat=62,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,l_foto=.false.,
   use_pbl=.false.,
   $SETUP
 /
 &GRIDOPTS
   JCAP=$JCAP,JCAP_B=$JCAP_B,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   regional=.false.,nlayers(63)=3,nlayers(64)=6,
   $GRIDOPTS
 /
 &BKGERR
   as=0.6,0.6,0.75,0.75,0.75,0.75,1.0,1.0
   vs=0.7,
   hzscl=1.7,0.8,0.5,
   hswgt=0.45,0.3,0.25,
   bw=0.0,norsp=4,
   bkgv_flowdep=.true.,bkgv_rewgtfct=1.5,
   tsfc_sdv(1)=3.0,tsfc_sdv(2)=3.0,
   $BKGVERR
 /
 &ANBKGERR
   anisotropic=.false.,
   $ANBKGERR
 /
 &JCOPTS
   ljcpdry=.true.,bamp_jcpdry=2.5e7,
   $JCOPTS
 /
 &STRONGOPTS
   jcstrong=.true.,nstrong=1,nvmodes_keep=8,period_max=6.,period_width=1.5,
   jcstrong_option=2,baldiag_full=.true.,baldiag_inc=.true.,
   $STRONGOPTS
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.true.,oberrflg=.false.,c_varqc=0.02,
   use_poq7=.true.,
   $OBSQC
 /
 &OBS_INPUT
   dmesh(1)=180.0,dmesh(2)=145.0,dmesh(3)=240.0,dmesh(4)=160.0,dmesh(5)=180.0,dmesh(6)=150.0,time_window_max=3.0,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',         dsis(01)='ps',                  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',         dsis(02)='t',                   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',         dsis(03)='q',                   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',        dplat(04)=' ',         dsis(04)='uv',                  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd',       dplat(05)=' ',         dsis(05)='spd',                 dval(05)=1.0,  dthin(05)=0,
   dfile(06)='radarbufr', dtype(06)='rw',        dplat(06)=' ',         dsis(06)='rw',                  dval(06)=1.0,  dthin(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',         dsis(07)='dw',                  dval(07)=1.0,  dthin(07)=0,
   dfile(08)='prepbufr',  dtype(08)='sst',       dplat(08)=' ',         dsis(08)='sst',                 dval(08)=1.0,  dthin(08)=0,
   dfile(09)='prepbufr',  dtype(09)='pw',        dplat(09)=' ',         dsis(09)='pw',                  dval(09)=1.0,  dthin(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',         dsis(10)='gps_ref',             dval(10)=1.0,  dthin(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',      dsis(11)='pcp_ssmi',            dval(11)=1.0,  dthin(11)=-1,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',      dsis(12)='pcp_tmi',             dval(12)=1.0,  dthin(12)=-1,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',       dsis(13)='sbuv8_n16',           dval(13)=1.0,  dthin(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',       dsis(14)='sbuv8_n17',           dval(14)=1.0,  dthin(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',       dsis(15)='sbuv8_n18',           dval(15)=1.0,  dthin(15)=0,
   dfile(16)='omi',       dtype(16)='omi',       dplat(16)='aura',      dsis(16)='omi_aura',            dval(16)=1.0,  dthin(16)=6,
   dfile(17)='hirs2bufr', dtype(17)='hirs2',     dplat(17)='n14',       dsis(17)='hirs2_n14',           dval(17)=6.0,  dthin(17)=1,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n16',       dsis(18)='hirs3_n16',           dval(18)=0.0,  dthin(18)=1,
   dfile(19)='hirs3bufr', dtype(19)='hirs3',     dplat(19)='n17',       dsis(19)='hirs3_n17',           dval(19)=6.0,  dthin(19)=1,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='n18',       dsis(20)='hirs4_n18',           dval(20)=0.0,  dthin(20)=1,
   dfile(21)='hirs4bufr', dtype(21)='hirs4',     dplat(21)='metop-a',   dsis(21)='hirs4_metop-a',       dval(21)=6.0,  dthin(21)=1,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g11',       dsis(22)='sndr_g11',            dval(22)=0.0,  dthin(22)=1,
   dfile(23)='gsndrbufr', dtype(23)='sndr',      dplat(23)='g12',       dsis(23)='sndr_g12',            dval(23)=0.0,  dthin(23)=1,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g11',       dsis(24)='imgr_g11',            dval(24)=0.0,  dthin(24)=1,
   dfile(25)='gimgrbufr', dtype(25)='goes_img',  dplat(25)='g12',       dsis(25)='imgr_g12',            dval(25)=0.0,  dthin(25)=1,
   dfile(26)='airsbufr',  dtype(26)='airs',      dplat(26)='aqua',      dsis(26)='airs281SUBSET_aqua',  dval(26)=20.0, dthin(26)=1,
   dfile(27)='msubufr',   dtype(27)='msu',       dplat(27)='n14',       dsis(27)='msu_n14',             dval(27)=2.0,  dthin(27)=2,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n15',       dsis(28)='amsua_n15',           dval(28)=10.0, dthin(28)=2,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n16',       dsis(29)='amsua_n16',           dval(29)=0.0,  dthin(29)=2,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n17',       dsis(30)='amsua_n17',           dval(30)=0.0,  dthin(30)=2,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='n18',       dsis(31)='amsua_n18',           dval(31)=10.0, dthin(31)=2,
   dfile(32)='amsuabufr', dtype(32)='amsua',     dplat(32)='metop-a',   dsis(32)='amsua_metop-a',       dval(32)=10.0, dthin(32)=2,
   dfile(33)='airsbufr',  dtype(33)='amsua',     dplat(33)='aqua',      dsis(33)='amsua_aqua',          dval(33)=5.0,  dthin(33)=2,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n15',       dsis(34)='amsub_n15',           dval(34)=3.0,  dthin(34)=3,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n16',       dsis(35)='amsub_n16',           dval(35)=3.0,  dthin(35)=3,
   dfile(36)='amsubbufr', dtype(36)='amsub',     dplat(36)='n17',       dsis(36)='amsub_n17',           dval(36)=3.0,  dthin(36)=3,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='n18',       dsis(37)='mhs_n18',             dval(37)=3.0,  dthin(37)=3,
   dfile(38)='mhsbufr',   dtype(38)='mhs',       dplat(38)='metop-a',   dsis(38)='mhs_metop-a',         dval(38)=3.0,  dthin(38)=3,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f13',       dsis(39)='ssmi_f13',            dval(39)=0.0,  dthin(39)=4,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f14',       dsis(40)='ssmi_f14',            dval(40)=0.0,  dthin(40)=4,
   dfile(41)='ssmitbufr', dtype(41)='ssmi',      dplat(41)='f15',       dsis(41)='ssmi_f15',            dval(41)=0.0,  dthin(41)=4,
   dfile(42)='amsrebufr', dtype(42)='amsre_low', dplat(42)='aqua',      dsis(42)='amsre_aqua',          dval(42)=0.0,  dthin(42)=4,
   dfile(43)='amsrebufr', dtype(43)='amsre_mid', dplat(43)='aqua',      dsis(43)='amsre_aqua',          dval(43)=0.0,  dthin(43)=4,
   dfile(44)='amsrebufr', dtype(44)='amsre_hig', dplat(44)='aqua',      dsis(44)='amsre_aqua',          dval(44)=0.0,  dthin(44)=4,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_las', dplat(45)='f16',       dsis(45)='ssmis_f16',           dval(45)=0.0,  dthin(45)=4,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_uas', dplat(46)='f16',       dsis(46)='ssmis_f16',           dval(46)=0.0,  dthin(46)=4,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_img', dplat(47)='f16',       dsis(47)='ssmis_f16',           dval(47)=0.0,  dthin(47)=4,
   dfile(48)='ssmisbufr', dtype(48)='ssmis_env', dplat(48)='f16',       dsis(48)='ssmis_f16',           dval(48)=0.0,  dthin(48)=4,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd1',    dplat(49)='g12',       dsis(49)='sndrD1_g12',          dval(49)=1.5,  dthin(49)=5,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd2',    dplat(50)='g12',       dsis(50)='sndrD2_g12',          dval(50)=1.5,  dthin(50)=5,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd3',    dplat(51)='g12',       dsis(51)='sndrD3_g12',          dval(51)=1.5,  dthin(51)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd1',    dplat(53)='g11',       dsis(53)='sndrD1_g11',          dval(53)=1.5,  dthin(53)=5,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd2',    dplat(54)='g11',       dsis(54)='sndrD2_g11',          dval(54)=1.5,  dthin(54)=5,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd3',    dplat(55)='g11',       dsis(55)='sndrD3_g11',          dval(55)=1.5,  dthin(55)=5,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd4',    dplat(56)='g11',       dsis(56)='sndrD4_g11',          dval(56)=1.5,  dthin(56)=5,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd1',    dplat(57)='g13',       dsis(57)='sndrD1_g13',          dval(57)=1.5,  dthin(57)=5,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd2',    dplat(58)='g13',       dsis(58)='sndrD2_g13',          dval(58)=1.5,  dthin(58)=5,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd3',    dplat(59)='g13',       dsis(59)='sndrD3_g13',          dval(59)=1.5,  dthin(59)=5,
   dfile(60)='gsnd1bufr', dtype(60)='sndrd4',    dplat(60)='g13',       dsis(60)='sndrD4_g13',          dval(60)=1.5,  dthin(60)=5,
   dfile(61)='iasibufr',  dtype(61)='iasi',      dplat(61)='metop-a',   dsis(61)='iasi616_metop-a',     dval(61)=20.0, dthin(61)=1,
   dfile(62)='gomebufr',  dtype(62)='gome',      dplat(62)='metop-a',   dsis(62)='gome_metop-a',        dval(62)=1.0,  dthin(62)=6,
   $OBSINPUT
 /
  &SUPEROB_RADAR
   $SUPERRAD
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=180.,obpres=1000.,obdattim=${adate},
   obhourset=0.,
   $SINGLEOB
 /"

# Define namelist for RTMA runs

export RTMA_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.true.,write_diag(3)=.true.,
   gencode=78,qoption=1,
   factqmin=1.0,factqmax=1.0,deltim=$DELTIM,
   ndat=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   diag_rad=.false.,diag_pcp=.false.,diag_ozone=.false.,
   nhr_assimilation=3,
 /
 &GRIDOPTS
   JCAP=$JCAP,JCAP_B=$JCAP_B,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.false.,wrf_mass_regional=.false.,twodvar_regional=.true.,
   diagnostic_reg=.false.,
   filled_grid=.false.,half_grid=.true.,netcdf=.false.,
 /
 &BKGERR
   as=0.35,0.35,0.35,0.50,0.50,0.80,1.00,1.00,
   hzscl=1.414,1.000,0.707,
   vs=0.5,bw=0.0,
 /
 &ANBKGERR
   anisotropic=.true.,an_vs=0.5,ngauss=1,
   an_flen_u=-5.,an_flen_t=3.,an_flen_z=-200.,
   ifilt_ord=2,npass=3,normal=-200,grid_ratio=2.,nord_f2a=4,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=1,nvmodes_keep=20,period_max=3.,
   baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.false.,oberrflg=.false.,c_varqc=0.02,vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=60.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',  dplat(01)=' ', dsis(01)='ps',  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',   dplat(02)=' ', dsis(02)='t',   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',   dplat(03)=' ', dsis(03)='q',   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',  dplat(04)=' ', dsis(04)='uv',  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd', dplat(05)=' ', dsis(05)='spd', dval(05)=1.0,  dthin(05)=0,
 /
 &SUPEROB_RADAR
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=36.,oblon=260.,obpres=1000.,obdattim=${adate},
   obhourset=0.,
 /"

# Define namelist for arw binary run

export arw_binary_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=78,qoption=2,
   factqmin=0.0,factqmax=0.0,deltim=$DELTIM,
   ndat=62,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   nhr_assimilation=3,l_foto=.false.,
   use_pbl=.false.,
 /
 &GRIDOPTS
   JCAP=$JCAP,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.false.,wrf_mass_regional=.true.,diagnostic_reg=.false.,
   filled_grid=.false.,half_grid=.true.,netcdf=$NETCDF,
 /
 &BKGERR
   as=1.0,1.0,0.5 ,0.7,0.7,0.5,1.0,1.0,
   hzscl=0.373,0.746,1.50,
   vs=1.0,bw=0.,fstat=.true.,
 /
 &ANBKGERR
   anisotropic=.false.,an_vs=1.0,ngauss=1,
   an_flen_u=-5.,an_flen_t=3.,an_flen_z=-200.,
   ifilt_ord=2,npass=3,normal=-200,grid_ratio=4.,nord_f2a=4,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=0,nvmodes_keep=20,period_max=3.,
   baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.false.,c_varqc=0.02,vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=120.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,dmesh(5)=120,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',         dsis(01)='ps',                  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',         dsis(02)='t',                   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',         dsis(03)='q',                   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',        dplat(04)=' ',         dsis(04)='uv',                  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd',       dplat(05)=' ',         dsis(05)='spd',                 dval(05)=1.0,  dthin(05)=0,
   dfile(06)='radarbufr', dtype(06)='rw',        dplat(06)=' ',         dsis(06)='rw',                  dval(06)=1.0,  dthin(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',         dsis(07)='dw',                  dval(07)=1.0,  dthin(07)=0,
   dfile(08)='prepbufr',  dtype(08)='sst',       dplat(08)=' ',         dsis(08)='sst',                 dval(08)=1.0,  dthin(08)=0,
   dfile(09)='prepbufr',  dtype(09)='pw',        dplat(09)=' ',         dsis(09)='pw',                  dval(09)=1.0,  dthin(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',         dsis(10)='gps_ref',             dval(10)=1.0,  dthin(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',      dsis(11)='pcp_ssmi',            dval(11)=1.0,  dthin(11)=-1,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',      dsis(12)='pcp_tmi',             dval(12)=1.0,  dthin(12)=-1,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',       dsis(13)='sbuv8_n16',           dval(13)=1.0,  dthin(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',       dsis(14)='sbuv8_n17',           dval(14)=1.0,  dthin(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',       dsis(15)='sbuv8_n18',           dval(15)=1.0,  dthin(15)=0,
   dfile(16)='omi',       dtype(16)='omi',       dplat(16)='aura',      dsis(16)='omi_aura',            dval(16)=1.0,  dthin(16)=6,
   dfile(17)='hirs2bufr', dtype(17)='hirs2',     dplat(17)='n14',       dsis(17)='hirs2_n14',           dval(17)=6.0,  dthin(17)=1,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n16',       dsis(18)='hirs3_n16',           dval(18)=0.0,  dthin(18)=1,
   dfile(19)='hirs3bufr', dtype(19)='hirs3',     dplat(19)='n17',       dsis(19)='hirs3_n17',           dval(19)=6.0,  dthin(19)=1,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='n18',       dsis(20)='hirs4_n18',           dval(20)=0.0,  dthin(20)=1,
   dfile(21)='hirs4bufr', dtype(21)='hirs4',     dplat(21)='metop-a',   dsis(21)='hirs4_metop-a',       dval(21)=6.0,  dthin(21)=1,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g11',       dsis(22)='sndr_g11',            dval(22)=0.0,  dthin(22)=1,
   dfile(23)='gsndrbufr', dtype(23)='sndr',      dplat(23)='g12',       dsis(23)='sndr_g12',            dval(23)=0.0,  dthin(23)=1,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g11',       dsis(24)='imgr_g11',            dval(24)=0.0,  dthin(24)=1,
   dfile(25)='gimgrbufr', dtype(25)='goes_img',  dplat(25)='g12',       dsis(25)='imgr_g12',            dval(25)=0.0,  dthin(25)=1,
   dfile(26)='airsbufr',  dtype(26)='airs',      dplat(26)='aqua',      dsis(26)='airs281SUBSET_aqua',  dval(26)=20.0, dthin(26)=1,
   dfile(27)='msubufr',   dtype(27)='msu',       dplat(27)='n14',       dsis(27)='msu_n14',             dval(27)=2.0,  dthin(27)=2,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n15',       dsis(28)='amsua_n15',           dval(28)=10.0, dthin(28)=2,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n16',       dsis(29)='amsua_n16',           dval(29)=0.0,  dthin(29)=2,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n17',       dsis(30)='amsua_n17',           dval(30)=0.0,  dthin(30)=2,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='n18',       dsis(31)='amsua_n18',           dval(31)=10.0, dthin(31)=2,
   dfile(32)='amsuabufr', dtype(32)='amsua',     dplat(32)='metop-a',   dsis(32)='amsua_metop-a',       dval(32)=10.0, dthin(32)=2,
   dfile(33)='airsbufr',  dtype(33)='amsua',     dplat(33)='aqua',      dsis(33)='amsua_aqua',          dval(33)=5.0,  dthin(33)=2,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n15',       dsis(34)='amsub_n15',           dval(34)=3.0,  dthin(34)=3,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n16',       dsis(35)='amsub_n16',           dval(35)=3.0,  dthin(35)=3,
   dfile(36)='amsubbufr', dtype(36)='amsub',     dplat(36)='n17',       dsis(36)='amsub_n17',           dval(36)=3.0,  dthin(36)=3,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='n18',       dsis(37)='mhs_n18',             dval(37)=3.0,  dthin(37)=3,
   dfile(38)='mhsbufr',   dtype(38)='mhs',       dplat(38)='metop-a',   dsis(38)='mhs_metop-a',         dval(38)=3.0,  dthin(38)=3,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f13',       dsis(39)='ssmi_f13',            dval(39)=0.0,  dthin(39)=4,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f14',       dsis(40)='ssmi_f14',            dval(40)=0.0,  dthin(40)=4,
   dfile(41)='ssmitbufr', dtype(41)='ssmi',      dplat(41)='f15',       dsis(41)='ssmi_f15',            dval(41)=0.0,  dthin(41)=4,
   dfile(42)='amsrebufr', dtype(42)='amsre_low', dplat(42)='aqua',      dsis(42)='amsre_aqua',          dval(42)=0.0,  dthin(42)=4,
   dfile(43)='amsrebufr', dtype(43)='amsre_mid', dplat(43)='aqua',      dsis(43)='amsre_aqua',          dval(43)=0.0,  dthin(43)=4,
   dfile(44)='amsrebufr', dtype(44)='amsre_hig', dplat(44)='aqua',      dsis(44)='amsre_aqua',          dval(44)=0.0,  dthin(44)=4,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_las', dplat(45)='f16',       dsis(45)='ssmis_f16',           dval(45)=0.0,  dthin(45)=4,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_uas', dplat(46)='f16',       dsis(46)='ssmis_f16',           dval(46)=0.0,  dthin(46)=4,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_img', dplat(47)='f16',       dsis(47)='ssmis_f16',           dval(47)=0.0,  dthin(47)=4,
   dfile(48)='ssmisbufr', dtype(48)='ssmis_env', dplat(48)='f16',       dsis(48)='ssmis_f16',           dval(48)=0.0,  dthin(48)=4,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd1',    dplat(49)='g12',       dsis(49)='sndrD1_g12',          dval(49)=1.5,  dthin(49)=5,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd2',    dplat(50)='g12',       dsis(50)='sndrD2_g12',          dval(50)=1.5,  dthin(50)=5,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd3',    dplat(51)='g12',       dsis(51)='sndrD3_g12',          dval(51)=1.5,  dthin(51)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd1',    dplat(53)='g11',       dsis(53)='sndrD1_g11',          dval(53)=1.5,  dthin(53)=5,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd2',    dplat(54)='g11',       dsis(54)='sndrD2_g11',          dval(54)=1.5,  dthin(54)=5,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd3',    dplat(55)='g11',       dsis(55)='sndrD3_g11',          dval(55)=1.5,  dthin(55)=5,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd4',    dplat(56)='g11',       dsis(56)='sndrD4_g11',          dval(56)=1.5,  dthin(56)=5,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd1',    dplat(57)='g13',       dsis(57)='sndrD1_g13',          dval(57)=1.5,  dthin(57)=5,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd2',    dplat(58)='g13',       dsis(58)='sndrD2_g13',          dval(58)=1.5,  dthin(58)=5,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd3',    dplat(59)='g13',       dsis(59)='sndrD3_g13',          dval(59)=1.5,  dthin(59)=5,
   dfile(60)='gsnd1bufr', dtype(60)='sndrd4',    dplat(60)='g13',       dsis(60)='sndrD4_g13',          dval(60)=1.5,  dthin(60)=5,
   dfile(61)='iasibufr',  dtype(61)='iasi',      dplat(61)='metop-a',   dsis(61)='iasi616_metop-a',     dval(61)=20.0, dthin(61)=1,
   dfile(62)='gomebufr',  dtype(62)='gome',      dplat(62)='metop-a',   dsis(62)='gome_metop-a',        dval(62)=1.0,  dthin(62)=6,
 /
 &SUPEROB_RADAR
   del_azimuth=5.,del_elev=.25,del_range=5000.,del_time=.5,elev_angle_max=5.,minnum=50,range_max=100000.,
   l2superob_only=.false.,
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=270.,obpres=850.,obdattim=${adate},
   obhourset=0.,
 /"

# Define namelist for arw netcdf run

export arw_netcdf_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=78,qoption=2,
   factqmin=0.0,factqmax=0.0,deltim=$DELTIM,
   ndat=62,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   nhr_assimilation=3,l_foto=.false.,
   use_pbl=.false.,
 /
 &GRIDOPTS
   JCAP=$JCAP,JCAP_B=$JCAP_B,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.false.,wrf_mass_regional=.true.,diagnostic_reg=.false.,
   filled_grid=.false.,half_grid=.true.,netcdf=$NETCDF,
 /
 &BKGERR
   as=1.0,1.0,0.5 ,0.7,0.7,0.5,1.0,1.0,
   hzscl=0.373,0.746,1.50,
   vs=1.0,bw=0.,fstat=.true.,
 /
 &ANBKGERR
   anisotropic=.false.,an_vs=1.0,ngauss=1,
   an_flen_u=-5.,an_flen_t=3.,an_flen_z=-200.,
   ifilt_ord=2,npass=3,normal=-200,grid_ratio=4.,nord_f2a=4,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=0,nvmodes_keep=20,period_max=3.,
   baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.false.,c_varqc=0.02,vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=120.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,dmesh(5)=120,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',         dsis(01)='ps',                  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',         dsis(02)='t',                   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',         dsis(03)='q',                   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',        dplat(04)=' ',         dsis(04)='uv',                  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd',       dplat(05)=' ',         dsis(05)='spd',                 dval(05)=1.0,  dthin(05)=0,
   dfile(06)='radarbufr', dtype(06)='rw',        dplat(06)=' ',         dsis(06)='rw',                  dval(06)=1.0,  dthin(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',         dsis(07)='dw',                  dval(07)=1.0,  dthin(07)=0,
   dfile(08)='prepbufr',  dtype(08)='sst',       dplat(08)=' ',         dsis(08)='sst',                 dval(08)=1.0,  dthin(08)=0,
   dfile(09)='prepbufr',  dtype(09)='pw',        dplat(09)=' ',         dsis(09)='pw',                  dval(09)=1.0,  dthin(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',         dsis(10)='gps_ref',             dval(10)=1.0,  dthin(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',      dsis(11)='pcp_ssmi',            dval(11)=1.0,  dthin(11)=-1,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',      dsis(12)='pcp_tmi',             dval(12)=1.0,  dthin(12)=-1,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',       dsis(13)='sbuv8_n16',           dval(13)=1.0,  dthin(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',       dsis(14)='sbuv8_n17',           dval(14)=1.0,  dthin(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',       dsis(15)='sbuv8_n18',           dval(15)=1.0,  dthin(15)=0,
   dfile(16)='omi',       dtype(16)='omi',       dplat(16)='aura',      dsis(16)='omi_aura',            dval(16)=1.0,  dthin(16)=6,
   dfile(17)='hirs2bufr', dtype(17)='hirs2',     dplat(17)='n14',       dsis(17)='hirs2_n14',           dval(17)=6.0,  dthin(17)=1,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n16',       dsis(18)='hirs3_n16',           dval(18)=0.0,  dthin(18)=1,
   dfile(19)='hirs3bufr', dtype(19)='hirs3',     dplat(19)='n17',       dsis(19)='hirs3_n17',           dval(19)=6.0,  dthin(19)=1,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='n18',       dsis(20)='hirs4_n18',           dval(20)=0.0,  dthin(20)=1,
   dfile(21)='hirs4bufr', dtype(21)='hirs4',     dplat(21)='metop-a',   dsis(21)='hirs4_metop-a',       dval(21)=6.0,  dthin(21)=1,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g11',       dsis(22)='sndr_g11',            dval(22)=0.0,  dthin(22)=1,
   dfile(23)='gsndrbufr', dtype(23)='sndr',      dplat(23)='g12',       dsis(23)='sndr_g12',            dval(23)=0.0,  dthin(23)=1,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g11',       dsis(24)='imgr_g11',            dval(24)=0.0,  dthin(24)=1,
   dfile(25)='gimgrbufr', dtype(25)='goes_img',  dplat(25)='g12',       dsis(25)='imgr_g12',            dval(25)=0.0,  dthin(25)=1,
   dfile(26)='airsbufr',  dtype(26)='airs',      dplat(26)='aqua',      dsis(26)='airs281SUBSET_aqua',  dval(26)=20.0, dthin(26)=1,
   dfile(27)='msubufr',   dtype(27)='msu',       dplat(27)='n14',       dsis(27)='msu_n14',             dval(27)=2.0,  dthin(27)=2,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n15',       dsis(28)='amsua_n15',           dval(28)=10.0, dthin(28)=2,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n16',       dsis(29)='amsua_n16',           dval(29)=0.0,  dthin(29)=2,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n17',       dsis(30)='amsua_n17',           dval(30)=0.0,  dthin(30)=2,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='n18',       dsis(31)='amsua_n18',           dval(31)=10.0, dthin(31)=2,
   dfile(32)='amsuabufr', dtype(32)='amsua',     dplat(32)='metop-a',   dsis(32)='amsua_metop-a',       dval(32)=10.0, dthin(32)=2,
   dfile(33)='airsbufr',  dtype(33)='amsua',     dplat(33)='aqua',      dsis(33)='amsua_aqua',          dval(33)=5.0,  dthin(33)=2,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n15',       dsis(34)='amsub_n15',           dval(34)=3.0,  dthin(34)=3,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n16',       dsis(35)='amsub_n16',           dval(35)=3.0,  dthin(35)=3,
   dfile(36)='amsubbufr', dtype(36)='amsub',     dplat(36)='n17',       dsis(36)='amsub_n17',           dval(36)=3.0,  dthin(36)=3,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='n18',       dsis(37)='mhs_n18',             dval(37)=3.0,  dthin(37)=3,
   dfile(38)='mhsbufr',   dtype(38)='mhs',       dplat(38)='metop-a',   dsis(38)='mhs_metop-a',         dval(38)=3.0,  dthin(38)=3,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f13',       dsis(39)='ssmi_f13',            dval(39)=0.0,  dthin(39)=4,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f14',       dsis(40)='ssmi_f14',            dval(40)=0.0,  dthin(40)=4,
   dfile(41)='ssmitbufr', dtype(41)='ssmi',      dplat(41)='f15',       dsis(41)='ssmi_f15',            dval(41)=0.0,  dthin(41)=4,
   dfile(42)='amsrebufr', dtype(42)='amsre_low', dplat(42)='aqua',      dsis(42)='amsre_aqua',          dval(42)=0.0,  dthin(42)=4,
   dfile(43)='amsrebufr', dtype(43)='amsre_mid', dplat(43)='aqua',      dsis(43)='amsre_aqua',          dval(43)=0.0,  dthin(43)=4,
   dfile(44)='amsrebufr', dtype(44)='amsre_hig', dplat(44)='aqua',      dsis(44)='amsre_aqua',          dval(44)=0.0,  dthin(44)=4,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_las', dplat(45)='f16',       dsis(45)='ssmis_f16',           dval(45)=0.0,  dthin(45)=4,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_uas', dplat(46)='f16',       dsis(46)='ssmis_f16',           dval(46)=0.0,  dthin(46)=4,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_img', dplat(47)='f16',       dsis(47)='ssmis_f16',           dval(47)=0.0,  dthin(47)=4,
   dfile(48)='ssmisbufr', dtype(48)='ssmis_env', dplat(48)='f16',       dsis(48)='ssmis_f16',           dval(48)=0.0,  dthin(48)=4,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd1',    dplat(49)='g12',       dsis(49)='sndrD1_g12',          dval(49)=1.5,  dthin(49)=5,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd2',    dplat(50)='g12',       dsis(50)='sndrD2_g12',          dval(50)=1.5,  dthin(50)=5,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd3',    dplat(51)='g12',       dsis(51)='sndrD3_g12',          dval(51)=1.5,  dthin(51)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd1',    dplat(53)='g11',       dsis(53)='sndrD1_g11',          dval(53)=1.5,  dthin(53)=5,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd2',    dplat(54)='g11',       dsis(54)='sndrD2_g11',          dval(54)=1.5,  dthin(54)=5,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd3',    dplat(55)='g11',       dsis(55)='sndrD3_g11',          dval(55)=1.5,  dthin(55)=5,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd4',    dplat(56)='g11',       dsis(56)='sndrD4_g11',          dval(56)=1.5,  dthin(56)=5,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd1',    dplat(57)='g13',       dsis(57)='sndrD1_g13',          dval(57)=1.5,  dthin(57)=5,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd2',    dplat(58)='g13',       dsis(58)='sndrD2_g13',          dval(58)=1.5,  dthin(58)=5,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd3',    dplat(59)='g13',       dsis(59)='sndrD3_g13',          dval(59)=1.5,  dthin(59)=5,
   dfile(60)='gsnd1bufr', dtype(60)='sndrd4',    dplat(60)='g13',       dsis(60)='sndrD4_g13',          dval(60)=1.5,  dthin(60)=5,
   dfile(61)='iasibufr',  dtype(61)='iasi',      dplat(61)='metop-a',   dsis(61)='iasi616_metop-a',     dval(61)=20.0, dthin(61)=1,
   dfile(62)='gomebufr',  dtype(62)='gome',      dplat(62)='metop-a',   dsis(62)='gome_metop-a',        dval(62)=1.0,  dthin(62)=6,
 /
 &SUPEROB_RADAR
   del_azimuth=5.,del_elev=.25,del_range=5000.,del_time=.5,elev_angle_max=5.,minnum=50,range_max=100000.,
   l2superob_only=.false.,
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=270.,obpres=850.,obdattim=${adate},
   obhourset=0.,
 /"

# Define namelist for nmm binary run

export nmm_binary_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=78,qoption=2,
   factqmin=0.0,factqmax=0.0,deltim=$DELTIM,
   ndat=62,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   nhr_assimilation=3,l_foto=.false.,
   use_pbl=.false.,
 /
 &GRIDOPTS
   JCAP=$JCAP,JCAP_B=$JCAP_B,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.true.,wrf_mass_regional=.false.,diagnostic_reg=.false.,
   filled_grid=.false.,half_grid=.true.,netcdf=$NETCDF,
 /
 &BKGERR
   as=1.0,1.0,0.5 ,0.7,0.7,0.5,1.0,1.0,
   hzscl=0.373,0.746,1.50,
   vs=1.0,bw=0.,fstat=.true.,
 /
 &ANBKGERR
   anisotropic=.false.,an_vs=1.0,ngauss=1,
   an_flen_u=-5.,an_flen_t=3.,an_flen_z=-200.,
   ifilt_ord=2,npass=3,normal=-200,grid_ratio=4.,nord_f2a=4,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=0,nvmodes_keep=20,period_max=3.,
   baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.true.,c_varqc=0.02,vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=120.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,dmesh(5)=120,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',         dsis(01)='ps',                  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',         dsis(02)='t',                   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',         dsis(03)='q',                   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',        dplat(04)=' ',         dsis(04)='uv',                  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd',       dplat(05)=' ',         dsis(05)='spd',                 dval(05)=1.0,  dthin(05)=0,
   dfile(06)='radarbufr', dtype(06)='rw',        dplat(06)=' ',         dsis(06)='rw',                  dval(06)=1.0,  dthin(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',         dsis(07)='dw',                  dval(07)=1.0,  dthin(07)=0,
   dfile(08)='prepbufr',  dtype(08)='sst',       dplat(08)=' ',         dsis(08)='sst',                 dval(08)=1.0,  dthin(08)=0,
   dfile(09)='prepbufr',  dtype(09)='pw',        dplat(09)=' ',         dsis(09)='pw',                  dval(09)=1.0,  dthin(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',         dsis(10)='gps_ref',             dval(10)=1.0,  dthin(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',      dsis(11)='pcp_ssmi',            dval(11)=1.0,  dthin(11)=-1,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',      dsis(12)='pcp_tmi',             dval(12)=1.0,  dthin(12)=-1,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',       dsis(13)='sbuv8_n16',           dval(13)=1.0,  dthin(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',       dsis(14)='sbuv8_n17',           dval(14)=1.0,  dthin(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',       dsis(15)='sbuv8_n18',           dval(15)=1.0,  dthin(15)=0,
   dfile(16)='omi',       dtype(16)='omi',       dplat(16)='aura',      dsis(16)='omi_aura',            dval(16)=1.0,  dthin(16)=6,
   dfile(17)='hirs2bufr', dtype(17)='hirs2',     dplat(17)='n14',       dsis(17)='hirs2_n14',           dval(17)=6.0,  dthin(17)=1,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n16',       dsis(18)='hirs3_n16',           dval(18)=0.0,  dthin(18)=1,
   dfile(19)='hirs3bufr', dtype(19)='hirs3',     dplat(19)='n17',       dsis(19)='hirs3_n17',           dval(19)=6.0,  dthin(19)=1,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='n18',       dsis(20)='hirs4_n18',           dval(20)=0.0,  dthin(20)=1,
   dfile(21)='hirs4bufr', dtype(21)='hirs4',     dplat(21)='metop-a',   dsis(21)='hirs4_metop-a',       dval(21)=6.0,  dthin(21)=1,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g11',       dsis(22)='sndr_g11',            dval(22)=0.0,  dthin(22)=1,
   dfile(23)='gsndrbufr', dtype(23)='sndr',      dplat(23)='g12',       dsis(23)='sndr_g12',            dval(23)=0.0,  dthin(23)=1,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g11',       dsis(24)='imgr_g11',            dval(24)=0.0,  dthin(24)=1,
   dfile(25)='gimgrbufr', dtype(25)='goes_img',  dplat(25)='g12',       dsis(25)='imgr_g12',            dval(25)=0.0,  dthin(25)=1,
   dfile(26)='airsbufr',  dtype(26)='airs',      dplat(26)='aqua',      dsis(26)='airs281SUBSET_aqua',  dval(26)=20.0, dthin(26)=1,
   dfile(27)='msubufr',   dtype(27)='msu',       dplat(27)='n14',       dsis(27)='msu_n14',             dval(27)=2.0,  dthin(27)=2,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n15',       dsis(28)='amsua_n15',           dval(28)=10.0, dthin(28)=2,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n16',       dsis(29)='amsua_n16',           dval(29)=0.0,  dthin(29)=2,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n17',       dsis(30)='amsua_n17',           dval(30)=0.0,  dthin(30)=2,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='n18',       dsis(31)='amsua_n18',           dval(31)=10.0, dthin(31)=2,
   dfile(32)='amsuabufr', dtype(32)='amsua',     dplat(32)='metop-a',   dsis(32)='amsua_metop-a',       dval(32)=10.0, dthin(32)=2,
   dfile(33)='airsbufr',  dtype(33)='amsua',     dplat(33)='aqua',      dsis(33)='amsua_aqua',          dval(33)=5.0,  dthin(33)=2,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n15',       dsis(34)='amsub_n15',           dval(34)=3.0,  dthin(34)=3,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n16',       dsis(35)='amsub_n16',           dval(35)=3.0,  dthin(35)=3,
   dfile(36)='amsubbufr', dtype(36)='amsub',     dplat(36)='n17',       dsis(36)='amsub_n17',           dval(36)=3.0,  dthin(36)=3,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='n18',       dsis(37)='mhs_n18',             dval(37)=3.0,  dthin(37)=3,
   dfile(38)='mhsbufr',   dtype(38)='mhs',       dplat(38)='metop-a',   dsis(38)='mhs_metop-a',         dval(38)=3.0,  dthin(38)=3,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f13',       dsis(39)='ssmi_f13',            dval(39)=0.0,  dthin(39)=4,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f14',       dsis(40)='ssmi_f14',            dval(40)=0.0,  dthin(40)=4,
   dfile(41)='ssmitbufr', dtype(41)='ssmi',      dplat(41)='f15',       dsis(41)='ssmi_f15',            dval(41)=0.0,  dthin(41)=4,
   dfile(42)='amsrebufr', dtype(42)='amsre_low', dplat(42)='aqua',      dsis(42)='amsre_aqua',          dval(42)=0.0,  dthin(42)=4,
   dfile(43)='amsrebufr', dtype(43)='amsre_mid', dplat(43)='aqua',      dsis(43)='amsre_aqua',          dval(43)=0.0,  dthin(43)=4,
   dfile(44)='amsrebufr', dtype(44)='amsre_hig', dplat(44)='aqua',      dsis(44)='amsre_aqua',          dval(44)=0.0,  dthin(44)=4,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_las', dplat(45)='f16',       dsis(45)='ssmis_f16',           dval(45)=0.0,  dthin(45)=4,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_uas', dplat(46)='f16',       dsis(46)='ssmis_f16',           dval(46)=0.0,  dthin(46)=4,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_img', dplat(47)='f16',       dsis(47)='ssmis_f16',           dval(47)=0.0,  dthin(47)=4,
   dfile(48)='ssmisbufr', dtype(48)='ssmis_env', dplat(48)='f16',       dsis(48)='ssmis_f16',           dval(48)=0.0,  dthin(48)=4,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd1',    dplat(49)='g12',       dsis(49)='sndrD1_g12',          dval(49)=1.5,  dthin(49)=5,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd2',    dplat(50)='g12',       dsis(50)='sndrD2_g12',          dval(50)=1.5,  dthin(50)=5,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd3',    dplat(51)='g12',       dsis(51)='sndrD3_g12',          dval(51)=1.5,  dthin(51)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd1',    dplat(53)='g11',       dsis(53)='sndrD1_g11',          dval(53)=1.5,  dthin(53)=5,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd2',    dplat(54)='g11',       dsis(54)='sndrD2_g11',          dval(54)=1.5,  dthin(54)=5,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd3',    dplat(55)='g11',       dsis(55)='sndrD3_g11',          dval(55)=1.5,  dthin(55)=5,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd4',    dplat(56)='g11',       dsis(56)='sndrD4_g11',          dval(56)=1.5,  dthin(56)=5,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd1',    dplat(57)='g13',       dsis(57)='sndrD1_g13',          dval(57)=1.5,  dthin(57)=5,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd2',    dplat(58)='g13',       dsis(58)='sndrD2_g13',          dval(58)=1.5,  dthin(58)=5,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd3',    dplat(59)='g13',       dsis(59)='sndrD3_g13',          dval(59)=1.5,  dthin(59)=5,
   dfile(60)='gsnd1bufr', dtype(60)='sndrd4',    dplat(60)='g13',       dsis(60)='sndrD4_g13',          dval(60)=1.5,  dthin(60)=5,
   dfile(61)='iasibufr',  dtype(61)='iasi',      dplat(61)='metop-a',   dsis(61)='iasi616_metop-a',     dval(61)=20.0, dthin(61)=1,
   dfile(62)='gomebufr',  dtype(62)='gome',      dplat(62)='metop-a',   dsis(62)='gome_metop-a',        dval(62)=1.0,  dthin(62)=6,
 /
 &SUPEROB_RADAR
   del_azimuth=5.,del_elev=.25,del_range=5000.,del_time=.5,elev_angle_max=5.,minnum=50,range_max=100000.,
   l2superob_only=.false.,
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=270.,obpres=850.,obdattim=${adate},
   obhourset=0.,
 /"

# Define namelist for nmm netcdf run

export nmm_netcdf_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=78,qoption=2,
   factqmin=0.0,factqmax=0.0,deltim=$DELTIM,
   ndat=62,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   nhr_assimilation=3,l_foto=.false.,
   use_pbl=.false.,
 /
 &GRIDOPTS
   JCAP=$JCAP,JCAP_B=$JCAP_B,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.true.,wrf_mass_regional=.false.,diagnostic_reg=.false.,
   filled_grid=.false.,half_grid=.true.,netcdf=$NETCDF,
 /
 &BKGERR
   as=1.0,1.0,0.5 ,0.7,0.7,0.5,1.0,1.0,
   hzscl=0.373,0.746,1.50,
   vs=1.0,bw=0.,fstat=.true.,
 /
 &ANBKGERR
   anisotropic=.false.,an_vs=1.0,ngauss=1,
   an_flen_u=-5.,an_flen_t=3.,an_flen_z=-200.,
   ifilt_ord=2,npass=3,normal=-200,grid_ratio=4.,nord_f2a=4,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=0,nvmodes_keep=20,period_max=3.,
   baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.false.,c_varqc=0.02,vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=120.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,dmesh(5)=120,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',         dsis(01)='ps',                  dval(01)=1.0,  dthin(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',         dsis(02)='t',                   dval(02)=1.0,  dthin(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',         dsis(03)='q',                   dval(03)=1.0,  dthin(03)=0,
   dfile(04)='prepbufr',  dtype(04)='uv',        dplat(04)=' ',         dsis(04)='uv',                  dval(04)=1.0,  dthin(04)=0,
   dfile(05)='prepbufr',  dtype(05)='spd',       dplat(05)=' ',         dsis(05)='spd',                 dval(05)=1.0,  dthin(05)=0,
   dfile(06)='radarbufr', dtype(06)='rw',        dplat(06)=' ',         dsis(06)='rw',                  dval(06)=1.0,  dthin(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',         dsis(07)='dw',                  dval(07)=1.0,  dthin(07)=0,
   dfile(08)='prepbufr',  dtype(08)='sst',       dplat(08)=' ',         dsis(08)='sst',                 dval(08)=1.0,  dthin(08)=0,
   dfile(09)='prepbufr',  dtype(09)='pw',        dplat(09)=' ',         dsis(09)='pw',                  dval(09)=1.0,  dthin(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',         dsis(10)='gps_ref',             dval(10)=1.0,  dthin(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',      dsis(11)='pcp_ssmi',            dval(11)=1.0,  dthin(11)=-1,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',      dsis(12)='pcp_tmi',             dval(12)=1.0,  dthin(12)=-1,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',       dsis(13)='sbuv8_n16',           dval(13)=1.0,  dthin(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',       dsis(14)='sbuv8_n17',           dval(14)=1.0,  dthin(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',       dsis(15)='sbuv8_n18',           dval(15)=1.0,  dthin(15)=0,
   dfile(16)='omi',       dtype(16)='omi',       dplat(16)='aura',      dsis(16)='omi_aura',            dval(16)=1.0,  dthin(16)=6,
   dfile(17)='hirs2bufr', dtype(17)='hirs2',     dplat(17)='n14',       dsis(17)='hirs2_n14',           dval(17)=6.0,  dthin(17)=1,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n16',       dsis(18)='hirs3_n16',           dval(18)=0.0,  dthin(18)=1,
   dfile(19)='hirs3bufr', dtype(19)='hirs3',     dplat(19)='n17',       dsis(19)='hirs3_n17',           dval(19)=6.0,  dthin(19)=1,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='n18',       dsis(20)='hirs4_n18',           dval(20)=0.0,  dthin(20)=1,
   dfile(21)='hirs4bufr', dtype(21)='hirs4',     dplat(21)='metop-a',   dsis(21)='hirs4_metop-a',       dval(21)=6.0,  dthin(21)=1,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g11',       dsis(22)='sndr_g11',            dval(22)=0.0,  dthin(22)=1,
   dfile(23)='gsndrbufr', dtype(23)='sndr',      dplat(23)='g12',       dsis(23)='sndr_g12',            dval(23)=0.0,  dthin(23)=1,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g11',       dsis(24)='imgr_g11',            dval(24)=0.0,  dthin(24)=1,
   dfile(25)='gimgrbufr', dtype(25)='goes_img',  dplat(25)='g12',       dsis(25)='imgr_g12',            dval(25)=0.0,  dthin(25)=1,
   dfile(26)='airsbufr',  dtype(26)='airs',      dplat(26)='aqua',      dsis(26)='airs281SUBSET_aqua',  dval(26)=20.0, dthin(26)=1,
   dfile(27)='msubufr',   dtype(27)='msu',       dplat(27)='n14',       dsis(27)='msu_n14',             dval(27)=2.0,  dthin(27)=2,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n15',       dsis(28)='amsua_n15',           dval(28)=10.0, dthin(28)=2,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n16',       dsis(29)='amsua_n16',           dval(29)=0.0,  dthin(29)=2,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n17',       dsis(30)='amsua_n17',           dval(30)=0.0,  dthin(30)=2,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='n18',       dsis(31)='amsua_n18',           dval(31)=10.0, dthin(31)=2,
   dfile(32)='amsuabufr', dtype(32)='amsua',     dplat(32)='metop-a',   dsis(32)='amsua_metop-a',       dval(32)=10.0, dthin(32)=2,
   dfile(33)='airsbufr',  dtype(33)='amsua',     dplat(33)='aqua',      dsis(33)='amsua_aqua',          dval(33)=5.0,  dthin(33)=2,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n15',       dsis(34)='amsub_n15',           dval(34)=3.0,  dthin(34)=3,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n16',       dsis(35)='amsub_n16',           dval(35)=3.0,  dthin(35)=3,
   dfile(36)='amsubbufr', dtype(36)='amsub',     dplat(36)='n17',       dsis(36)='amsub_n17',           dval(36)=3.0,  dthin(36)=3,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='n18',       dsis(37)='mhs_n18',             dval(37)=3.0,  dthin(37)=3,
   dfile(38)='mhsbufr',   dtype(38)='mhs',       dplat(38)='metop-a',   dsis(38)='mhs_metop-a',         dval(38)=3.0,  dthin(38)=3,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f13',       dsis(39)='ssmi_f13',            dval(39)=0.0,  dthin(39)=4,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f14',       dsis(40)='ssmi_f14',            dval(40)=0.0,  dthin(40)=4,
   dfile(41)='ssmitbufr', dtype(41)='ssmi',      dplat(41)='f15',       dsis(41)='ssmi_f15',            dval(41)=0.0,  dthin(41)=4,
   dfile(42)='amsrebufr', dtype(42)='amsre_low', dplat(42)='aqua',      dsis(42)='amsre_aqua',          dval(42)=0.0,  dthin(42)=4,
   dfile(43)='amsrebufr', dtype(43)='amsre_mid', dplat(43)='aqua',      dsis(43)='amsre_aqua',          dval(43)=0.0,  dthin(43)=4,
   dfile(44)='amsrebufr', dtype(44)='amsre_hig', dplat(44)='aqua',      dsis(44)='amsre_aqua',          dval(44)=0.0,  dthin(44)=4,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_las', dplat(45)='f16',       dsis(45)='ssmis_f16',           dval(45)=0.0,  dthin(45)=4,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_uas', dplat(46)='f16',       dsis(46)='ssmis_f16',           dval(46)=0.0,  dthin(46)=4,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_img', dplat(47)='f16',       dsis(47)='ssmis_f16',           dval(47)=0.0,  dthin(47)=4,
   dfile(48)='ssmisbufr', dtype(48)='ssmis_env', dplat(48)='f16',       dsis(48)='ssmis_f16',           dval(48)=0.0,  dthin(48)=4,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd1',    dplat(49)='g12',       dsis(49)='sndrD1_g12',          dval(49)=1.5,  dthin(49)=5,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd2',    dplat(50)='g12',       dsis(50)='sndrD2_g12',          dval(50)=1.5,  dthin(50)=5,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd3',    dplat(51)='g12',       dsis(51)='sndrD3_g12',          dval(51)=1.5,  dthin(51)=5,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd4',    dplat(52)='g12',       dsis(52)='sndrD4_g12',          dval(52)=1.5,  dthin(52)=5,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd1',    dplat(53)='g11',       dsis(53)='sndrD1_g11',          dval(53)=1.5,  dthin(53)=5,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd2',    dplat(54)='g11',       dsis(54)='sndrD2_g11',          dval(54)=1.5,  dthin(54)=5,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd3',    dplat(55)='g11',       dsis(55)='sndrD3_g11',          dval(55)=1.5,  dthin(55)=5,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd4',    dplat(56)='g11',       dsis(56)='sndrD4_g11',          dval(56)=1.5,  dthin(56)=5,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd1',    dplat(57)='g13',       dsis(57)='sndrD1_g13',          dval(57)=1.5,  dthin(57)=5,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd2',    dplat(58)='g13',       dsis(58)='sndrD2_g13',          dval(58)=1.5,  dthin(58)=5,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd3',    dplat(59)='g13',       dsis(59)='sndrD3_g13',          dval(59)=1.5,  dthin(59)=5,
   dfile(60)='gsnd1bufr', dtype(60)='sndrd4',    dplat(60)='g13',       dsis(60)='sndrD4_g13',          dval(60)=1.5,  dthin(60)=5,
   dfile(61)='iasibufr',  dtype(61)='iasi',      dplat(61)='metop-a',   dsis(61)='iasi616_metop-a',     dval(61)=20.0, dthin(61)=1,
   dfile(62)='gomebufr',  dtype(62)='gome',      dplat(62)='metop-a',   dsis(62)='gome_metop-a',        dval(62)=1.0,  dthin(62)=6,
 /
 &SUPEROB_RADAR
   del_azimuth=5.,del_elev=.25,del_range=5000.,del_time=.5,elev_angle_max=5.,minnum=50,range_max=100000.,
   l2superob_only=.false.,
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=270.,obpres=850.,obdattim=${adate},
   obhourset=0.,
 /"

# Define namelist for nems nmmb run

export nems_nmmb_namelist="

 &SETUP
   miter=2,niter(1)=50,niter(2)=50,
   write_diag(1)=.true.,write_diag(2)=.false.,write_diag(3)=.true.,
   gencode=78,qoption=2,
   factqmin=0.0,factqmax=0.0,deltim=$DELTIM,
   ndat=67,npred=5,iguess=-1,
   oneobtest=.false.,retrieval=.false.,
   nhr_assimilation=3,l_foto=.false.,
   use_pbl=.false.,preserve_restart_date=.true.,
 /
 &GRIDOPTS
   JCAP=$JCAP,NLAT=$NLAT,NLON=$LONA,nsig=$LEVS,hybrid=.true.,
   wrf_nmm_regional=.false.,wrf_mass_regional=.false.,nems_nmmb_regional=.true.,diagnostic_reg=.true.,
   nmmb_reference_grid='H',grid_ratio_nmmb=1.412,
   filled_grid=.false.,half_grid=.true.,netcdf=.false.,
 /
 &BKGERR
   as=0.28,0.28,0.3,0.7,0.1,0.5,1.0,1.0,
   hzscl=0.373,0.746,1.50,
   vs=0.6,bw=0.,fstat=.false.,
 /
 &ANBKGERR
   anisotropic=.false.,
 /
 &JCOPTS
 /
 &STRONGOPTS
   jcstrong=.false.,jcstrong_option=3,nstrong=0,nvmodes_keep=8,period_max=3.,
    baldiag_full=.true.,baldiag_inc=.true.,
 /
 &OBSQC
   dfact=0.75,dfact1=3.0,noiqc=.false.,
   vadfile='prepbufr',
 /
 &OBS_INPUT
   dmesh(1)=120.0,dmesh(2)=60.0,dmesh(3)=60.0,dmesh(4)=60.0,dmesh(5)=120,time_window_max=1.5,
   dfile(01)='prepbufr',  dtype(01)='ps',        dplat(01)=' ',       dsis(01)='ps',                    dval(01)=1.0,  dthin(01)=0,  dsfcalc(01)=0,
   dfile(02)='prepbufr'   dtype(02)='t',         dplat(02)=' ',       dsis(02)='t',                     dval(02)=1.0,  dthin(02)=0,  dsfcalc(02)=0,
   dfile(03)='prepbufr',  dtype(03)='q',         dplat(03)=' ',       dsis(03)='q',                     dval(03)=1.0,  dthin(03)=0,  dsfcalc(03)=0,
   dfile(04)='prepbufr',  dtype(04)='pw',        dplat(04)=' ',       dsis(04)='pw',                    dval(04)=1.0,  dthin(04)=0,  dsfcalc(04)=0,
   dfile(05)='prepbufr',  dtype(05)='uv',        dplat(05)=' ',       dsis(05)='uv',                    dval(05)=1.0,  dthin(05)=0,  dsfcalc(05)=0,
   dfile(06)='prepbufr',  dtype(06)='spd',       dplat(06)=' ',       dsis(06)='spd',                   dval(06)=1.0,  dthin(06)=0,  dsfcalc(06)=0,
   dfile(07)='prepbufr',  dtype(07)='dw',        dplat(07)=' ',       dsis(07)='dw',                    dval(07)=1.0,  dthin(07)=0,  dsfcalc(07)=0,
   dfile(08)='radarbufr', dtype(08)='rw',        dplat(08)=' ',       dsis(08)='rw',                    dval(08)=1.0,  dthin(08)=0,  dsfcalc(08)=0,
   dfile(09)='prepbufr',  dtype(09)='sst',       dplat(09)=' ',       dsis(09)='sst',                   dval(09)=1.0,  dthin(09)=0,  dsfcalc(09)=0,
   dfile(10)='gpsrobufr', dtype(10)='gps_ref',   dplat(10)=' ',       dsis(10)='gps_ref',               dval(10)=1.0,  dthin(10)=0,  dsfcalc(10)=0,
   dfile(11)='ssmirrbufr',dtype(11)='pcp_ssmi',  dplat(11)='dmsp',    dsis(11)='pcp_ssmi',              dval(11)=1.0,  dthin(11)=-1, dsfcalc(11)=0,
   dfile(12)='tmirrbufr', dtype(12)='pcp_tmi',   dplat(12)='trmm',    dsis(12)='pcp_tmi',               dval(12)=1.0,  dthin(12)=-1, dsfcalc(12)=0,
   dfile(13)='sbuvbufr',  dtype(13)='sbuv2',     dplat(13)='n16',     dsis(13)='sbuv8_n16',             dval(13)=1.0,  dthin(13)=0,  dsfcalc(13)=0,
   dfile(14)='sbuvbufr',  dtype(14)='sbuv2',     dplat(14)='n17',     dsis(14)='sbuv8_n17',             dval(14)=1.0,  dthin(14)=0,  dsfcalc(14)=0,
   dfile(15)='sbuvbufr',  dtype(15)='sbuv2',     dplat(15)='n18',     dsis(15)='sbuv8_n18',             dval(15)=1.0,  dthin(15)=0,  dsfcalc(15)=0,
   dfile(16)='hirs2bufr', dtype(16)='hirs2',     dplat(16)='n14',     dsis(16)='hirs2_n14',             dval(16)=6.0,  dthin(16)=1,  dsfcalc(16)=0,
   dfile(17)='hirs3bufr', dtype(17)='hirs3',     dplat(17)='n16',     dsis(17)='hirs3_n16',             dval(17)=0.0,  dthin(17)=1,  dsfcalc(17)=0,
   dfile(18)='hirs3bufr', dtype(18)='hirs3',     dplat(18)='n17',     dsis(18)='hirs3_n17',             dval(18)=6.0,  dthin(18)=1,  dsfcalc(18)=0,
   dfile(19)='hirs4bufr', dtype(19)='hirs4',     dplat(19)='n18',     dsis(19)='hirs4_n18',             dval(19)=0.0,  dthin(19)=1,  dsfcalc(19)=0,
   dfile(20)='hirs4bufr', dtype(20)='hirs4',     dplat(20)='metop-a', dsis(20)='hirs4_metop-a',         dval(20)=6.0,  dthin(20)=1,  dsfcalc(20)=0,
   dfile(21)='gsndrbufr', dtype(21)='sndr',      dplat(21)='g11',     dsis(21)='sndr_g11',              dval(21)=0.0,  dthin(21)=1,  dsfcalc(21)=0,
   dfile(22)='gsndrbufr', dtype(22)='sndr',      dplat(22)='g12',     dsis(22)='sndr_g12',              dval(22)=0.0,  dthin(22)=1,  dsfcalc(22)=0,
   dfile(23)='gimgrbufr', dtype(23)='goes_img',  dplat(23)='g11',     dsis(23)='imgr_g11',              dval(23)=0.0,  dthin(23)=1,  dsfcalc(23)=0,
   dfile(24)='gimgrbufr', dtype(24)='goes_img',  dplat(24)='g12',     dsis(24)='imgr_g12',              dval(24)=0.0,  dthin(24)=1,  dsfcalc(24)=0,
   dfile(25)='airsbufr',  dtype(25)='airs',      dplat(25)='aqua',    dsis(25)='airs281SUBSET_aqua',    dval(25)=20.0, dthin(25)=1,  dsfcalc(25)=0,
   dfile(26)='msubufr',   dtype(26)='msu',       dplat(26)='n14',     dsis(26)='msu_n14',               dval(26)=2.0,  dthin(26)=2,  dsfcalc(26)=0,
   dfile(27)='amsuabufr', dtype(27)='amsua',     dplat(27)='n15',     dsis(27)='amsua_n15',             dval(27)=10.0, dthin(27)=2,  dsfcalc(27)=0,
   dfile(28)='amsuabufr', dtype(28)='amsua',     dplat(28)='n16',     dsis(28)='amsua_n16',             dval(28)=0.0,  dthin(28)=2,  dsfcalc(28)=0,
   dfile(29)='amsuabufr', dtype(29)='amsua',     dplat(29)='n17',     dsis(29)='amsua_n17',             dval(29)=0.0,  dthin(29)=2,  dsfcalc(29)=0,
   dfile(30)='amsuabufr', dtype(30)='amsua',     dplat(30)='n18',     dsis(30)='amsua_n18',             dval(30)=10.0, dthin(30)=2,  dsfcalc(30)=0,
   dfile(31)='amsuabufr', dtype(31)='amsua',     dplat(31)='metop-a', dsis(31)='amsua_metop-a',         dval(31)=10.0, dthin(31)=2,  dsfcalc(31)=0,
   dfile(32)='airsbufr',  dtype(32)='amsua',     dplat(32)='aqua',    dsis(32)='amsua_aqua',            dval(32)=10.0, dthin(32)=2,  dsfcalc(32)=0,
   dfile(33)='amsubbufr', dtype(33)='amsub',     dplat(33)='n15',     dsis(33)='amsub_n15',             dval(33)=3.0,  dthin(33)=3,  dsfcalc(33)=0,
   dfile(34)='amsubbufr', dtype(34)='amsub',     dplat(34)='n16',     dsis(34)='amsub_n16',             dval(34)=3.0,  dthin(34)=3,  dsfcalc(34)=0,
   dfile(35)='amsubbufr', dtype(35)='amsub',     dplat(35)='n17',     dsis(35)='amsub_n17',             dval(35)=3.0,  dthin(35)=3,  dsfcalc(35)=0,
   dfile(36)='mhsbufr',   dtype(36)='mhs',       dplat(36)='n18',     dsis(36)='mhs_n18',               dval(36)=3.0,  dthin(36)=3,  dsfcalc(36)=0,
   dfile(37)='mhsbufr',   dtype(37)='mhs',       dplat(37)='metop-a', dsis(37)='mhs_metop-a',           dval(37)=3.0,  dthin(37)=3,  dsfcalc(37)=0,
   dfile(38)='ssmitbufr', dtype(38)='ssmi',      dplat(38)='f13',     dsis(38)='ssmi_f13',              dval(38)=0.0,  dthin(38)=4,  dsfcalc(38)=0,
   dfile(39)='ssmitbufr', dtype(39)='ssmi',      dplat(39)='f14',     dsis(39)='ssmi_f14',              dval(39)=0.0,  dthin(39)=4,  dsfcalc(39)=0,
   dfile(40)='ssmitbufr', dtype(40)='ssmi',      dplat(40)='f15',     dsis(40)='ssmi_f15',              dval(40)=0.0,  dthin(40)=4,  dsfcalc(40)=0,
   dfile(41)='amsrebufr', dtype(41)='amsre_low', dplat(41)='aqua',    dsis(41)='amsre_aqua',            dval(41)=0.0,  dthin(41)=4,  dsfcalc(41)=0,
   dfile(42)='amsrebufr', dtype(42)='amsre_mid', dplat(42)='aqua',    dsis(42)='amsre_aqua',            dval(42)=0.0,  dthin(42)=4,  dsfcalc(42)=0,
   dfile(43)='amsrebufr', dtype(43)='amsre_hig', dplat(43)='aqua',    dsis(43)='amsre_aqua',            dval(43)=0.0,  dthin(43)=4,  dsfcalc(43)=0,
   dfile(44)='ssmisbufr', dtype(44)='ssmis_las', dplat(44)='f16',     dsis(44)='ssmis_f16',             dval(44)=0.0,  dthin(44)=4,  dsfcalc(44)=0,
   dfile(45)='ssmisbufr', dtype(45)='ssmis_uas', dplat(45)='f16',     dsis(45)='ssmis_f16',             dval(45)=0.0,  dthin(45)=4,  dsfcalc(45)=0,
   dfile(46)='ssmisbufr', dtype(46)='ssmis_img', dplat(46)='f16',     dsis(46)='ssmis_f16',             dval(46)=0.0,  dthin(46)=4,  dsfcalc(46)=0,
   dfile(47)='ssmisbufr', dtype(47)='ssmis_env', dplat(47)='f16',     dsis(47)='ssmis_f16',             dval(47)=0.0,  dthin(47)=4,  dsfcalc(47)=0,
   dfile(48)='gsnd1bufr', dtype(48)='sndrd1',    dplat(48)='g12',     dsis(48)='sndrD1_g12',            dval(48)=1.5,  dthin(48)=5,  dsfcalc(48)=0,
   dfile(49)='gsnd1bufr', dtype(49)='sndrd2',    dplat(49)='g12',     dsis(49)='sndrD2_g12',            dval(49)=1.5,  dthin(49)=5,  dsfcalc(49)=0,
   dfile(50)='gsnd1bufr', dtype(50)='sndrd3',    dplat(50)='g12',     dsis(50)='sndrD3_g12',            dval(50)=1.5,  dthin(50)=5,  dsfcalc(50)=0,
   dfile(51)='gsnd1bufr', dtype(51)='sndrd4',    dplat(51)='g12',     dsis(51)='sndrD4_g12',            dval(51)=1.5,  dthin(51)=5,  dsfcalc(51)=0,
   dfile(52)='gsnd1bufr', dtype(52)='sndrd1',    dplat(52)='g11',     dsis(52)='sndrD1_g11',            dval(52)=1.5,  dthin(52)=5,  dsfcalc(52)=0,
   dfile(53)='gsnd1bufr', dtype(53)='sndrd2',    dplat(53)='g11',     dsis(53)='sndrD2_g11',            dval(53)=1.5,  dthin(53)=5,  dsfcalc(53)=0,
   dfile(54)='gsnd1bufr', dtype(54)='sndrd3',    dplat(54)='g11',     dsis(54)='sndrD3_g11',            dval(54)=1.5,  dthin(54)=5,  dsfcalc(54)=0,
   dfile(55)='gsnd1bufr', dtype(55)='sndrd4',    dplat(55)='g11',     dsis(55)='sndrD4_g11',            dval(55)=1.5,  dthin(55)=5,  dsfcalc(55)=0,
   dfile(56)='gsnd1bufr', dtype(56)='sndrd1',    dplat(56)='g13',     dsis(56)='sndrD1_g13',            dval(56)=1.5,  dthin(56)=5,  dsfcalc(56)=0,
   dfile(57)='gsnd1bufr', dtype(57)='sndrd2',    dplat(57)='g13',     dsis(57)='sndrD2_g13',            dval(57)=1.5,  dthin(57)=5,  dsfcalc(57)=0,
   dfile(58)='gsnd1bufr', dtype(58)='sndrd3',    dplat(58)='g13',     dsis(58)='sndrD3_g13',            dval(58)=1.5,  dthin(58)=5,  dsfcalc(58)=0,
   dfile(59)='gsnd1bufr', dtype(59)='sndrd4',    dplat(59)='g13',     dsis(59)='sndrD4_g13',            dval(59)=1.5,  dthin(59)=5,  dsfcalc(59)=0,
   dfile(60)='iasibufr',  dtype(60)='iasi',      dplat(60)='metop-a', dsis(60)='iasi616_metop-a',       dval(60)=20.0, dthin(60)=1,  dsfcalc(60)=0,
   dfile(61)='gomebufr',  dtype(61)='gome',      dplat(61)='metop-a', dsis(61)='gome_metop-a',          dval(61)=1.0,  dthin(61)=6,  dsfcalc(61)=0,
   dfile(62)='omibufr',   dtype(62)='omi',       dplat(62)='aura',    dsis(62)='omi_aura',              dval(62)=1.0,  dthin(62)=6,  dsfcalc(62)=0,
   dfile(63)='sbuvbufr',  dtype(63)='sbuv2',     dplat(63)='n19',     dsis(63)='sbuv8_n19',             dval(63)=1.0,  dthin(63)=0,  dsfcalc(63)=0,
   dfile(64)='hirs4bufr', dtype(64)='hirs4',     dplat(64)='n19',     dsis(64)='hirs4_n19',             dval(64)=6.0,  dthin(64)=1,  dsfcalc(64)=0,
   dfile(65)='amsuabufr', dtype(65)='amsua',     dplat(65)='n19',     dsis(65)='amsua_n19',             dval(65)=10.0, dthin(65)=2,  dsfcalc(65)=0,
   dfile(66)='mhsbufr',   dtype(66)='mhs',       dplat(66)='n19',     dsis(66)='mhs_n19',               dval(66)=3.0,  dthin(66)=3,  dsfcalc(66)=0,
   dfile(67)='tcvitl'     dtype(67)='tcp',       dplat(67)=' ',       dsis(67)='tcp',                   dval(67)=1.0,  dthin(67)=0,  dsfcalc(67)=0,
/
 &SUPEROB_RADAR
   del_azimuth=5.,del_elev=.25,del_range=5000.,del_time=.5,elev_angle_max=5.,minnum=50,range_max=100000.,
   l2superob_only=.false.,
 /
 &LAG_DATA
 /
 &HYBRID_ENSEMBLE
 /
 &SINGLEOB_TEST
   maginnov=0.1,magoberr=0.1,oneob_type='t',
   oblat=45.,oblon=270.,obpres=850.,obdattim=${adate},
   obhourset=0.,
 /"
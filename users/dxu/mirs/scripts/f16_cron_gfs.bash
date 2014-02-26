#!/bin/bash

yyyymmdd=`date --date="2 days ago" +%Y-%m-%d`

cd /home/pub/mirs_operational/scripts/

/home/pub/mirs_operational/scripts/f16_gfs.bash ${yyyymmdd} > \
/disk1/pub/mirs_operational/logs/f16_gfs_log_${yyyymmdd} 2>&1


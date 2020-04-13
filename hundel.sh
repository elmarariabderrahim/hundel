

#!/bin/bash
 export username=$1
 export password=$2
path=$(pwd)
# WORKSPACE=$2
# VERSION_NUMBER=$3
# PLATEFORME_SOURCE=$4
# VERSION_NAME="V$3"
# PLATEFORME=`echo $JOB_NAME |cut -d"_" -f1`

# echo $JOB_NAME
# echo $WORKSPACE
# echo $VERSION_NUMBER
echo "yess"
echo "job =" $JOB_NAME
echo $path

mysql -u $username -p$password -N -e "use db5; insert into employees values (9,'2020-01-01','med','abdo','M','2020-01-01');"

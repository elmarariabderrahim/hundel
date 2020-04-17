#!/bin/bash


# JOB_NAME=$1
# WORKSPACE=$2
# VERSION_NUMBER=$3
# PLATEFORME_SOURCE=$4
# VERSION_NAME="V$3"
# PLATEFORME=`echo $JOB_NAME |cut -d"_" -f1`
# #BRANCHE=`echo $JOB_NAME |cut -d"_" -f2`
# # lecture des parametres / variables environnements
# SCRIPT_NAME=`basename "$0"`
# SCRIPT_PATH=$(readlink -f "$0")
# SCRIPT_BASEDIR_PATH=$(dirname "$SCRIPT_PATH")
# . ${SCRIPT_BASEDIR_PATH}/environment_config.sh

THERE_WERE_REJECTED_FILES=0
SCRIPT_HANDLED_LIST=()
Read_DB_Name() {
	DB_INSTRUCTION="NODBINSTRUCTIONINTHEFILE"
	while read -r line
	do
    	TEMP=$(echo $line | tr '[:lower:]' '[:upper:]')
    	#echo "line $TEMP"
    	if [[ $TEMP = *"USE"* ]]; then
    		if [[ $2 -eq 1 ]]; then
    			DB_INSTRUCTION=$TEMP
    		else 
    			DB_INSTRUCTION=$line
    		fi
    		break
    	fi
	done < "$1"
	RESULT=""
	if [[ $DB_INSTRUCTION = *"\`"* ]] 
		then 
		RESULT=$(echo $DB_INSTRUCTION | cut -d"\`" -f2 | xargs)
	else
		RESULT=$(echo $DB_INSTRUCTION | cut -d" " -f2 | cut -d";" -f1 | xargs)
	fi
  	echo -e "${RESULT}"
}
for inode in `ls -1 sql_scripts`
	do
  DB_NAME_IN_SCRIPT_UPPERCASE=`Read_DB_Name $inode 1`
	DB_NAME_IN_SCRIPT_LOWERCASE=`Read_DB_Name $inode 2`
done


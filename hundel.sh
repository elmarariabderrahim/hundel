export username=$1
export password=$2
list_database_in_script=()
flag=""
Read_DB_Name() {
	DB_INSTRUCTION="NODBINSTRUCTIONINTHEFILE"
	while read -r line
	do
    	TEMP=$(echo $line | tr '[:lower:]' '[:upper:]')
    	#echo "line $TEMP"
    	if [[ $TEMP = *"USE"* ]]; then
    		
    			DB_INSTRUCTION=$TEMP
    		 
    			DB_INSTRUCTION=$line
    		
    		
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

for f in PATT_UTILS/sql_scripts/*; do
script_name=$(echo $f| cut -d'/' -f 2)
DB_NAME_IN_SCRIPT_UPPERCASE=`Read_DB_Name $f `
echo $DB_NAME_IN_SCRIPT_UPPERCASE
	if [[  $DB_NAME_IN_SCRIPT_UPPERCASE != "NODBINSTRUCTIONINTHEFILE" ]]; then 

		if [[ ! ${list_database_in_script[*]} =~ "$DB_NAME_IN_SCRIPT_UPPERCASE" ]]; then 
			list_database_in_script+=("$DB_NAME_IN_SCRIPT_UPPERCASE")
		else 
			echo "$d est deja exporter "
		fi
	else
		echo "la base de donnee n'est pas specifier dans le script $script_name "
	fi
done	
for d in ${list_database_in_script[@]}; do
	echo " +++++"+$d
done


str=$(docker port test-mysql)
IFS=':'
read -ra ADDR <<< "$str"
docker_mysql_port=${ADDR[1]}

for d in ${list_database_in_script[@]}; do
	echo " ---"+$d
	mysqldump -u $username -p$password --no-data $d > $d.sql
	mysql -P $docker_mysql_port --protocol=tcp -u $username -p$password -Bse "CREATE DATABASE IF NOT EXISTS $d; "
	docker exec -i dadbc6ef4b91  mysql -u $username -p$password  $d < $d.sql
done

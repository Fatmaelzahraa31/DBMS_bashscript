#!/bin/bash

echo "--------------------------drop database--------------------------------"

read -p "enter database you want to drop :" db_name

if [[ -d $dataa/$db_name/ ]]; then 
    rm -r $dataa/$db_name 
    echo "database dropped" 
    . ./main.sh
else 
    "database didn't exist before"
    break

fi 

#!/bin/bash

echo "--------------------------drop database--------------------------------"

read -p "enter database you want to drop :" db_name

if [[ -d $db_name ]]; then 
    rm -r $db_name 
    echo "database dropped" 

else 
    "database didn't exist before"

fi 
. main.sh

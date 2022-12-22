#!/bin/bash

echo "---------------------create database--------------------------"

read -p "enter name of database :" db_name
if  [[ $db_name =~ ^[a-zA-Z]*$ ]]; then		
        
		if [[ -d $dataa/$db_name/ ]]; then
			echo "db existed before"
		
        else 
			mkdir $dataa/$db_name 
			echo "db created"
			. ./main.sh
		fi
else
    echo "db didn't create because there is special characters"
	. ./createdb.sh
fi

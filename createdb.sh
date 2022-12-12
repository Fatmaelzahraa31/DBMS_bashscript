#!/bin/bash

echo "---------------------create database--------------------------"

read -p "enter name of database :" db_name
		
        if [[ -d $db_name ]]; then
			echo "db existed before"
		
        else 
			mkdir $db_name 
			echo "db created"
		
		fi
./ main.sh
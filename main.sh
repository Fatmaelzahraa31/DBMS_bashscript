#!/bin/bash 

dataa=$PWD/DBMS
export dataa

echo "------------------------------hello from my DBMS------------------------------------"

select dbs in createdb listdb connectdb dropdb Exit
do 
	case $dbs in 
	"createdb" )
		. ./createdb.sh		

	;;
	"listdb" )
		. ./listdb.sh	

	;;
	"connectdb" )
		. ./connectdb.sh
	
	;;
	"dropdb" ) 
		. ./dropdb.sh

	;;
	"Exit" )
		break

	;;
	* )
	echo "there is an error in database"
	esac 
done	
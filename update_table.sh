#!/bin/bash

echo "-------------------update table--------------------------"

read -p "enter table you want to update : " table_name
if [ -f $dataa/$db_name/$tb_name ]; then 
    
    read -p "enter primary key :" pk
    
    echo -n "enter a old data :" old 
    read old
    echo -n "enter a new data :" new
    read new
        sed -i "/$old s/$old/$new/" $dataa/$db_name/$tb_name
        echo "table updated"
else 
    echo "table didn't exist before"
fi
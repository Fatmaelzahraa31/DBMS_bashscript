#!/bin/bash

echo "--------------------list table------------------------"


read -p "enter database you want to list in table :" db_name

    ls $dataa/$db_name
    echo "this is all table that exist here"
    . ./connectdb.sh
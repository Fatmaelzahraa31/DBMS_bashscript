#!/bin/bash 

echo "-------------------drop table------------------------"

read -p "enter table you want to drop :" tb_name

if [[ -f $dataa/$db_name/$tb_name ]]; then

    rm -r $dataa/$db_name/$tb_name
    echo "table dropped"

else
    echo "table didn't exist before"

fi

# ./ connect_table.sh 
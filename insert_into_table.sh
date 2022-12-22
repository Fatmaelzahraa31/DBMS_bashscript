#!/bin/bash

echo "---------------------insert into table---------------------------"

read -p "enter table you want to insert into : " tb_name

if [[ -f $dataa/$db_name/$tb_name ]]; then

    colsNum=$(awk 'BEGIN{FS=":"}{if(NR == 1) print NF}' $dataa/$db_name/$tb_name)

    if [[ -s $dataa/$db_name/$tb_name ]]; then
        ID=$( tail -1 $dataa/$db_name/$tb_name | cut -d':' -f1 )
        auto_incremnt=$(($ID + 1))
    
        echo -n "$auto_incremnt:" >> $dataa/$db_name/$tb_name
    else
        echo -n "1:" >> $dataa/$db_name/$tb_name

    fi

   
    for i in $(seq 2 $colsNum); do

        fname=$(awk 'BEGIN{FS=":"}{if(NR == 1) print $'$i'}' $dataa/$db_name/$tb_name)

        coltype=$(awk 'BEGIN{FS=":"}{if(NR == 2) print $'$i'}' $dataa/$db_name/$tb_name)
        read -p "Enter $fname To Insert Into It : " column_value


        if [[ $i = $colsNum ]]; then
            echo -n "$column_value" >> $dataa/$db_name/$tb_name
        else
            echo "none"
        fi

    done
   
else
    echo "File Doesn't exist"
fi
#!/bin/bash

is_leap_year(){
    year=$1

    if (( year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) )); then
        echo true 
    else
        echo false
    fi
}

num_days_in_month (){
    leap_days=(31 29 31 30 31 30 31 31 30 31 30 31)
    common_days=(31 28 31 30 31 30 31 31 30 31 30 31)
    
    leap=$(is_leap_year $1)
    case $leap in 
        true) 
            out=${leap_days[$2-1]}
            echo $out ;;
        false)
            out=${common_days[$2-1]}
            echo $out ;;
    esac
}

days_in_year(){
    total=0
    
    for ((i=1;i<$2;i++ )) ; do
        curr=$(num_days_in_month $1 $i)
        total=$((total + curr))
     
    done
    
    total=$((total+$3)) 

    echo $total
}

days_in_year $1 $2 $3
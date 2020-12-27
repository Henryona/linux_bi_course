#!/bin/bash

calculate () # first arg - number, second - operator, third - number
{
    case $2 in
    "+")answer=$[$1+$3];;
    "-")answer=$[$1-$3];;
    "/")answer=$[$1/$3];;
    "*")answer=$[$1*$3];;
    "%")answer=$[$1%$3];;
    "**")answer=$[$1**$3];;
    *)echo "error"; exit
    esac
    echo ${answer}

}

exit_flag=0
re='^[0-9]+$'

while [[ exit_flag -eq 0 ]]; do
    read a oper b
    if [[ $a == "exit" ]]; then
        exit_flag=1
        echo "bye"
        exit
    elif ! [[ $a =~ $re && $b =~ $re ]]; then
        echo "error"
        exit 
    else
        calculate "${a}" "${oper}" "${b}"
    fi
done

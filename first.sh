#! /usr/bin/bash

st="student"

case $1 in
0)
    echo "No ${st}s"
    ;;
1)
    echo "$1 ${st}"
    ;;
[2-4])
    echo "$1 ${st}s"
    ;;
*)
    echo "A lot of ${st}s"
esac

#if [[ $1 -gt 1 && $1 -lt 5 ]]
#then 
#    echo "$1 ${st}s"
#elif [[ $1 -gt 4 ]]
#then
#    echo "A lot of ${st}s"
#fi

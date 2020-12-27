#!/bin/bash

gcd () #two args M and N
{
    if [[ $1 -eq $2 ]]; then 
        echo "GCD is $1"
    elif [[ $1 -gt $2 ]]; then
        new_M=$[$1-$2]
        gcd ${new_M} $2
    else
        new_N=$[$2-$1]
        gcd $1 ${new_N}
    fi
}

exiter=0
while [[ exiter -eq 0 ]]; do
    read -p "" M N
    if [[ M -eq "" && N -eq "" ]]; then
        exiter=1
        echo "bye"
        continue
    fi
    gcd $M $N
done

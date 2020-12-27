#! /usr/bin/bash

child=16
adult=25
stdout=0

while [[ $stdout != 1 ]] 
    do
        echo "enter your name: "
        read name
    if [[ (-z $name) || ($name = 0) ]] ;then 
        echo "bye"
        stdout=1
    elif [[ -n $name ]]; then
        while [[ $stdout != 1 ]] ;do 
            echo "enter your age: " 
            read age
            if [[ ($age -eq 0) || (-z $age) ]] ;then
                echo "bye"
                stdout=1
            elif [[ $age -le $child ]] ;then 
                echo "$name, your group is child"
            elif [[ $age -gt $adult ]] ; then 
                echo "$name, your group is adult" ;else
                if [[ ($age -ge 17) && ($age -le 25) ]] ;then 
                    echo "$name, your group is youth" ;fi
            fi ;break
        done ;fi
done

#!/bin/bash

#cd /home/henryona/
#echo "`pwd`"

pwd
if [[ $? -eq 0 ]]
then 
    echo "good2"
else 
    echo "bad2"
fi


if `pwd > stdout.txt`
then 
    echo "good4"
else 
    echo "bad4"
fi

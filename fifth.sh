#!/bin/bash

counter ()  # takes one argument
{
  local let "c1+=$1"
  let "c2+=${1}*2"
} 

counter 1
counter 2
counter 3
counter 4
counter 5
counter 6
counter 7
counter 8
counter 9
counter 10

echo "counters are $c1 and $c2"

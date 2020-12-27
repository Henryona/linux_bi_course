#! /usr/bin/bash

a=10
b=5

let a=a+b
echo "first a: $a"
a=10

let "a = a + b"
echo "second a: $a"
a=10

let "a+=b"
echo "third a: $a"
a=10

let a=$a+$b
echo "fouth a: $a"
a=10

let "a=$a+$b"
echo "fifth a: $a"
a=10

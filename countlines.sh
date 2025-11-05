#!/bin/bash

a=$( basename "$1" );
b=$( wc -l < $1);

echo $a
if [[ "$b" -eq 0 ]];
then echo "has zero lines";
elif [[ "$b" -eq 1 ]];
then echo "has one line";
elif [[ "$b" -gt 1 ]];
then echo "has more than one line";
fi


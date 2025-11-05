#!/bin/bash

for i in $@; 
do
a=$( basename "$i" );
b=$( wc -l < $i);

echo $a
if [[ "$b" -eq 0 ]];
then echo "has zero lines";
elif [[ "$b" -eq 1 ]];
then echo "has one line";
elif [[ "$b" -gt 1 ]];
then echo "has more than one line";
fi;
done


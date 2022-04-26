#!/bin/bash

for ((i=1;i<=101;i++))
do
	echo "$(( RANDOM ))" >> num.txt
done	

wc -l num.txt

soma=0
for i in $( cat num.txt )
do
	soma=$(( $soma+$i ))
done

echo "soma: $soma"

rm num.txt

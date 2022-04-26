#!/bin/bash

for i in $( ls )
do
	echo "$( wc -l $i )"
done

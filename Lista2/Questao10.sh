#!/bin/bash

for i in $@
do
	ls $i &> /dev/null && echo "$i - SIM" || echo "$i - NAO"
done

#!/bin/bash

echo -e "obase=16\n43^2 - (11^3 + 31/4)\n10+10" > a.txt

echo "***Primeira maneira sem o | (Pipe)***"
resultado=`bc <<< $( cat a.txt )`
echo $resultado

echo "***Segunda maneira com o | (Pipe)***"
resultado=`cat a.txt | bc`
echo $resultado



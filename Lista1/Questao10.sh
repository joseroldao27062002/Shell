#!/bin/bash

echo "Digite o número desejado: "
read x

if [ $(($x%2)) -eq 0 ]
then
	echo "O número $x é par"
else
	echo "O número $x é ímpar"
fi




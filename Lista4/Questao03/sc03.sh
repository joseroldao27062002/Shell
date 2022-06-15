#!/bin/bash

nomes=$(grep -o '[A-Z][a-z]*[0-9]*' arqExemplo.txt)
nomes=(${nomes})

for ((i=0;i<${#nomes[@]};i++)) 
do
	somaEspacos=0
	for j in $(grep ${nomes[$i]} arqExemplo.txt | cut -d ' ' -f3)
	do
		somaEspacos=$[$somaEspacos + $j]
	done
	echo ${nomes[$i]} $somaEspacos >> arqDados.txt
done	
sort arqDados.txt > arqDadosOrdenados.txt
uniq arqDadosOrdenados.txt
rm arqDadosOrdenados.txt arqDados.txt

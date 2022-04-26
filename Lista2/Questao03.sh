#!/bin/bash

touch linhaArquivo.txt
ls $1 &> /dev/null && wc -l $1 > linhaArquivo.txt

if [ $( cut -d' ' -f1 linhaArquivo.txt ) -gt 3 ]
then
	echo "GOOD"
fi

rm linhaArquivo.txt

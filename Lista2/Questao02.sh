#!/bin/bash

maiorArquivoLinhas=0
maiorArquivo=0
touch linhasArquivo.txt
for ((c = 0;c < 4;c++)) do
 	read -p "Digite o nome do $(( c + 1 ))° arquivo: " arquivoDigitado
	wc -l $arquivoDigitado > linhasArquivo.txt
	linhasArquivo=`cut -d' ' -f1 linhasArquivo.txt`
	if [ $linhasArquivo -gt $maiorArquivoLinhas ]
	then
		maiorArquivoLinhas=$linhasArquivo
		maiorArquivo=$arquivoDigitado

	fi
done

echo "Arquivo com o maior número de linhas: $maiorArquivo"
rm linhasArquivo.txt

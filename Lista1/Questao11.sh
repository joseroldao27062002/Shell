#!/bin/bash

wc -l $1 | cut -c1-2 > arqLinhas.txt
wc -l $2 | cut -c1-2 >> arqLinhas.txt
wc -l $3 | cut -c1-2 >> arqLinhas.txt

qtdTotalLinhas=$( python -c "arqLinhas=open('./arqLinhas.txt', 'r')
qtdLinhas = 0
vetorNumLinhas = []
numeroLinha=arqLinhas.readlines()
for i in numeroLinha:
	vetorNumLinhas.append(int(i[0:2]))
print(sum(vetorNumLinhas))")

echo "A soma das linhas dos arquivos é $qtdTotalLinhas"

#!/bin/bash

echo "*** Arquivos e diretórios do diretorio $1" >> ListaLinda.txt
ls $1 >> ListaLinda.txt

echo "*** Arquivos e diretórios do diretorio $2" >> ListaLinda.txt
ls $2 >> ListaLinda.txt



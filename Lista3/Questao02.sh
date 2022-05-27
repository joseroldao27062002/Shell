#!/bin/bash

read -p "Digite o arquivo desejado: " arquivoEscolhido

operacao=$(tr \n 'z' < $arquivoEscolhido)
echo $operacao > $arquivoEscolhido


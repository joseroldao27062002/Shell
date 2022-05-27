#!/bin/bash

read -p "Digite o arquivo desejado: " arquivoEscolhido

operacao=$(tr -s "\n" "\n"  < $arquivoEscolhido)
echo "$operacao" > $arquivoEscolhido


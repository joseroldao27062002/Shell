#!/bin/bash

read -p "Digite um arquivo desejado existente: " arquivo

operacao=$(tr [:digit:] 'z' < $arquivo)
echo $operacao > $arquivo

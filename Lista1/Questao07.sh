#!/bin/bash

#Sobre substituição de variáveis
echo "Substituição de variável: Obter o valor de uma variável por intermédio do símbolo $"
echo "*** Exemplo ***"
echo "Vamos supor que exista uma variável no script chamada nome com o valor Carlos (nome=Carlos)"
nome="Carlos"
echo 'Ola meu nome é $nome'
echo "Ola meu nome é $nome"

#Sobre substituição de Shell
echo 'Subtituição de Shell: Executar um comando ou conjunto de comandos no linux por intermédio dos símbolos $()'
echo "*** Exemplo ***"
echo "Vamos supor que queremos mostrar os arquivos do diretório em que estamos (comando ls)"
echo -e 'arquivos e sub-diretorios do diretorio atual:\n$(ls)'
echo -e "arquivos e sub-diretorios do diretorio atual:\n$(ls)"


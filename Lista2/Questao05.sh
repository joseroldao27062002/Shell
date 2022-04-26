#!/bin/bash

vermelho="\033[0;31m"
verde="\033[0;32m"
amarelo="\033[1;33m"
azul="\033[0;34m"

read -p "Digite a opção desejada: " opcao

if [ $opcao = '>' ]
then
	echo -e "\033[0;32m>\033[0m: \033[1;33mRedireciona a saída padrão em um arquivo, caso o arquivo não esteja vazio substitui o conteúdo mais antigo pelo mais recente\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mecho 'print('Ola mundo, esse é o meu primeiro código python utilizando redirecionador' > ola_mundo.py')'\033[0m"
elif [ $opcao = '>>' ] 
then
	echo -e "\033[0;32m>>\033[0m: \033[1;33mRedireciona a saída padrão no final de um arquivo, independente do arquivo estar vazio ou não\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mecho 'lista = [] >> lista.py (Supondo que o arquivo não está vazio)'\033[0m"
elif [ $opcao = '2>' ]
then
	echo -e "\033[0;32m2>\033[0m: \033[1;33mRedireciona os erros da saída padrão em um arquivo, substituindo o conteúdo mais antigo pelo mais recente\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mls asasdr 2> /dev/null (Supondo que o arquivo não existe)\033"
elif [ $opcao = '2>>' ]
then
	echo -e "\033[0;32m2>>\033[0m: \033[1;33mRedireciona os erros da sáida padrão no final de um arquivo, independente do arquivo estar vazio ou não\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mls asasdr 2>> /dev/null (Supondo que o arquivo não existe)"\033
elif [ $opcao = '&>' ]
then
	echo -e "\033[0;32m&>\033[0m: \033[1;33mRedireciona qualquer resultado de erro ou acerto em um arquivo, substituindo o conteúdo mais antigo pelo mais recente\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mls asasdr &> /dev/null\033"
elif [ $opcao = '&>>' ]
then
	echo -e "\033[0;32m&>>\033[0m: \033[1;33mRedireciona qualquer resultado de erro ou acerto no final de um arquivo, independente do arquivo estar vazio ou não\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31masasdr &>> /dev/null\033"
elif [ $opcao = '<' ]
then
	echo -e "\033[0;32m<\033[0m: \033[1;33mRedireciona um arquivo como entrada padrão para um comando\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31memailqualquer@email.com < e-mail.txt\033"

elif [ $opcao = '<<' ]
then
	echo -e "\033[0;32m<<\033[0m: \033[1;33mRedireciona um 'arquivo' com palavras digitadas pelo usuário até uma palavra que simboliza o fim ou o EOF\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mwc -l << FIM\n>ola\n>Oi\n>Hello user\n>Goodbye\n>Have a nice day my friend\n>FIM\n4\033"
elif [ $opcao = '<<<' ]
then
	echo -e "\033[0;32m<<<\033[0m: \033[1;33mRedireciona como entrada padrão para um comando uma string, simulando uma entrada padrão\033[0m"
	echo -e "\033[0;34m***Exemplo***\033[0m\n\033[0;31mwc -l <<< '2.0. + 9.5'\033"
elif [ $opcao = '|' ]
then
	echo -e "\033[0;32m|\033[0m: \033[1;33mRedireciona tanto a entrada quanto a saída de um comando para um outro comando\033[0m"
	echo -e "\033[0;34m**Exemplo***\033[0m\n\033[0;31mls | grep -i esRuturADEDAdos\033"
fi

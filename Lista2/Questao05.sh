#!/bin/bash

read -p "Digite a opção desejada: " opcao

if [ $opcao = '>' ]
then
	echo ">: Redireciona a saída padrão em um arquivo, caso o arquivo não esteja vazio substitui o conteúdo mais antigo pelo mais recente"
	echo -e "***Exemplo***\necho 'print('Ola mundo, esse é o meu primeiro código python utilizando redirecionador' > ola_mundo.py')'"
elif [ $opcao = '>>' ] 
then
	echo ">>: Redireciona a saída padrão no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "***Exemplo***\necho 'lista = [] >> lista.py (Supondo que o arquivo não está vazio)'"
elif [ $opcao = '2>' ]
then
	echo "2>: Redireciona os erros da saída padrão em um arquivo, substituindo o conteúdo mais antigo pelo mais recente"
	echo -e "***Exemplo***\nls asasdr 2> /dev/null (Supondo que o arquivo não existe)"
elif [ $opcao = '2>>' ]
then
	echo "Redireciona os erros da sáida padrão no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "***Exemplo***\nls asasdr 2>> /dev/null (Supondo que o arquivo não existe)"
elif [ $opcao = '&>' ]
then
	echo "&>: Redireciona qualquer resultado de erro ou acerto em um arquivo, substituindo o conteúdo mais antigo pelo mais recente"
	echo -e "***Exemplo***\nls asasdr &> /dev/null"
elif [ $opcao = '&>>' ]
then
	echo "Redireciona qualquer resultado de erro ou acerto no final de um arquivo, independente do arquivo estar vazio ou não"
	echo -e "***Exemplo***\nasasdr &>> /dev/null"
elif [ $opcao = '<' ]
then
	echo "<: Redireciona um arquivo como entrada padrão para um comando"
	echo -e "***Exemplo***\nemailqualquer@email.com < e-mail.txt"

elif [ $opcao = '<<' ]
then
	echo "Redireciona um 'arquivo' com palavras digitadas pelo usuário até uma palavra que simboliza o fim ou o EOF"
	echo -e "***Exemplo***\nwc -l << FIM\n>ola\n>Oi\n>Hello user\n>Goodbye\n>Have a nice day my friend\n>FIM\n4"
elif [ $opcao = '<<<' ]
then
	echo "<<<: Redireciona como entrada padrão para um comando uma string, simulando uma entrada padrão"
	echo -e "***Exemplo***\nwc -l <<< '2.0. + 9.5'"
elif [ $opcao = '|' ]
then
	echo "|: Redireciona tanto a entrada quanto a saída de um comando para um outro comando"
	echo "***Exemplo***\nls | grep -i esRuturADEDAdos"
fi

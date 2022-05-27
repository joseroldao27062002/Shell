#!/bin/bash

opcao=z

echo "Transforme as pedras no seu caminho nas pedras da sua escada"

while [ $opcao != 'x' ]
do
	echo 'a)Liste apenas os diretorios de uma pasta'
	echo 'b)Liste apenas os arquivos executaveis'
	echo 'c)Liste apenas os links simbolicos'
	echo 'x)Saia do script'

	read -p "Digite a opção desejada: " opcao

	case $opcao in
		'a')
			read -p "Digite uma pasta desejada: " pasta
			echo "*** listando diretorios ***"
			for i in $(ls $pasta)
			do
				test -d $i && echo "$i"
			done
			break;;
		'b')
			read -p "Digite uma pasta desejada: " pasta
                	echo "*** listando executaveis ***"
			for i in $(ls $pasta)
			do
				test -f $i && test -x $i && echo "$i"
			done
			break;;
		'c')
			read -p "Digite uma pasta desejada: " pasta
                	echo "*** listando links simbolicos ***" 
			for i in $(ls -l $pasta)
			do
				if [$(echo $i | cut -c1) == 'l' ]
				then
					echo "$i"
				fi
			done
			break;;
                'x')
                	echo "Script encerrado"
			break;;
		*)
			echo "A opcao digitada não está presente nas opções disponíveis"
	esac
done


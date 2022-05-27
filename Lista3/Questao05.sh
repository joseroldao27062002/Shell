#!/bin/bash

senhaAceita=$false
while $senhaAceita
do
	echo "Digite uma senha: " 
        read -s  senha
	echo $senha | grep -P '(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{5,}' &> /dev/null
	
	if [ "$?" -eq 0 ]
	then
		echo "Sua senha cumpre o requisitos exigidos"
		senhaAceita=$true
		break
	else
		echo "Sua senha nao cumpre os requisitos exigidos"
	fi
done

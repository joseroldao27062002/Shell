#!/bin/bash
echo "Vou buscar os dados do sistema. Posso continuar?[sn]"
read RESPOSTA

if test $RESPOSTA = "n"
then 
	exit
else
	echo "Data e Horário:" 
	date
	echo
	echo "Uso do disco:"
	df
	echo
	echo "Usuários conectados:"
	w
fi

#!/bin/bash

function exibirArmazenamento() {
	echo -e "\n\033[1;33mAção realizada às $(date +%Hh:%Mm)\033" >> ./logs/$(date +%Y-%m-%d).log
	[ -d ~/backups/$1 ]
	if [ $? -eq 0 ]
	then
		echo -e "\033[0;32mSUCCESS: Exbição de armazenamento feita com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
		du -h ~/backups/$1/*  
	else
		echo -e "\033[0;31mERROR: Exibição de armazenamento não feita com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
	fi

}

exibirArmazenamento $1


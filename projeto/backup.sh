#!/bin/bash

function verificandoECriandoPasta() {
	[ -d $1 ] || mkdir $1
}

function criandoPastas() {
	verificandoECriandoPasta ~/backups
	verificandoECriandoPasta ~/backups/$(grep -o $1 arqConfig.txt)
	verificandoECriandoPasta ~/backups/$(grep -o $1 arqConfig.txt)/$(date +%Y-%m-%d-%H-%M) 
}

function obterConteudo() {
	echo -e "\n\033[1;33mAção realizada às $(date +%Hh:%Mm)\033" >> ./logs/$(date +%Y-%m-%d).log
	#./autenticacao.sh $1 $2
 	sshpass -p $4 scp -r $1@$2:$3 $3
	if [ $? -eq 0 ] 
	then
		echo -e "\033[0;32mSUCCESS: Transferência do host $2 do usuario $1 feita com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
	else
		echo -e "\033[0;31mERROR: Transferência do host $2 do usuario $1 não feita com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
	fi
	criandoPastas $2; mv $3 ~/backups/$2/$(date +%Y-%m-%d-%H-%M)
	comprimirDiretorio $2 $(date +%Y-%m-%d-%H-%M); rm -rf ~/backups/$2/$(date +%Y-%m-%d-%H-%M)
}

function listarBackups() {
	echo -e "\n\033[1;33mAção realizada às $(date +%Hh:%Mm)\033" >> ./logs/$(date +%Y-%m-%d).log	
	[ -d ~/backups/$1 ] 
	if [ $? -eq 0 ]
	then
		echo "*** Listando backups da maquina $1 ***"
		ls ~/backups/$1
		echo -e "\033[0;32mSUCCESS: Listagem de backups $1 concluída com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
	else
		echo -e "\033[0;31mERROR: Listagem de backups $1 não concluída por inexistência do diretório\033">> ./logs/$(date +%Y-%m-%d).log
	fi
}

function comprimirDiretorio() {
	zip $2 -r ~/backups/$1/$2; mv $2.zip ~/backups/$1
}


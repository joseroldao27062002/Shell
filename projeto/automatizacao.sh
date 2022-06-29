#!/bin/bash
#function automatizarConfs() {

function adicionarMaquina() {
	grep -qo $1 ./arqConfig.txt || echo -e "$1;$2;/home/$2;$3;/home/backups/$1" >> ./arqConfig.txt
}

#function removerMaquina() {

#}

function apagarBackupAutomatico() {
	find ~/backups/ -mtime +7 -delete
}

#adicionarMaquina $1 $2 $3 

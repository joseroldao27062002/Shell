#!/bin/bash
function visualizarPastaLog() {
	echo "*** Logs ***"
	ls ./logs
}

function visualizarLog() {
	echo -e "\n\033[1;33mAção realizada às $(date +%Hh:%Mm)\033" >> ./logs/$(date +%Y-%m-%d).log
	[ -f ./logs/$1.log ]
	if [ $? -eq 0 ]
	then
		echo -e "\033[0;32mSUCCESS: Log $1.log acessado com sucesso\033" >> ./logs/$(date +%Y-%m-%d).log
		cat ./logs/$1.log
	else
		echo -e "\033[0;31mERROR: Log $1 não acessado com sucesso por inexistência do arquivo\033" >> ./logs/$(date +%Y-%m-%d).log
	fi
}

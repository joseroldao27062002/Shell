#!/bin/bash
source ./backup.sh
source ./logs.sh
source ./automatizacao.sh

echo "*** Opções ***"
echo -e "0-SAIR\n1-REALIZAR BACKUP\n2-VISUALIZAR LOGS\n3-LISTAR BACKUP\n4-COMPARAR BACKUPS\n5-EXIBIR ESPAÇO DE DISCO\n6-AGENDAR BACKUP"

read -p "Digite a opção desejada: " opcao

while [ $opcao -ne 0 ] 
do
	apagarBackupAutomatico
	case $opcao in
		1)
			read -p "Digite o usuário de acesso ssh: " usuario
			read -p "Digite o IP do host remoto: " ipRemoto
			read -p "Digite a pasta de obtenção dos arquivos: " pastaObtencao 
			echo "Digite a senha do host remoto: " 
			read -s senha 
			adicionarMaquina $ipRemoto $usuario $senha 
			obterConteudo $usuario $ipRemoto $pastaObtencao $senha;;

		2)
			visualizarPastaLog
			read -p "Digite o log que você deseja visualizar: " arqLog
			visualizarLog $arqLog;;
		3)
			echo "*** Hosts disponíveis ***"
			ls ~/backups
			read -p "Digite qual host você deseja visualizar: " host 
			listarBackups $host;;
		4)
			;;
		5)
			echo "*** Hosts disponíveis ***"
			ls ~/backups
			read -p "Digite qual host você deseja visualizar: " maquina	
			./armazenamentoDisco.sh $maquina;;
		6)
			;;
	esac
	read -p "Digite a opção desejada: " opcao
done
	

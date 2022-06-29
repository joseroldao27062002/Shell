#!/bin/bash
function enviarChave() {
	grep -qo $1 ./arqConfig.txt || ssh-copy-id -i ~/.ssh/id_dsa.pub $1@$2
}
 
enviarChave $1 $2

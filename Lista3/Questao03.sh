#!/bin/bash

read -p "Digite um enderço IP: " enderecoIP

for ((i=1;i<5;i++)) 
do
	octeto=$(echo $enderecoIP | cut -d '.' -f$i)
	octetoBinario=$(echo "obase=2; ibase=10; $octeto" | bc)
	if [ ${#octetoBinario} -lt 8 ]
	then
		echo "Octeto #$i: $octeto em binário `seq -s '' $[8 - ${#octetoBinario}] | tr [:digit:] 0`$octetoBinario"
	else
		echo "Octeto #$i: $octeto em binário $octetoBinario"
	fi
done

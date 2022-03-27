#!/bin/bash

echo "Usuários do SO: $(cat /etc/passwd | wc -l)" 
echo "Quantidade de usuários /bin/bash: $(cat /etc/passwd | grep /bin/bash | wc -l)"
echo "Quantidade de usuários que não usam /bin/bash:  $(( $(cat /etc/passwd | wc -l)-$(cat /etc/passwd | grep /bin/bash | wc -l) ))"

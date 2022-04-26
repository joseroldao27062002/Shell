#!/bin/bash

[ $(id -u) -eq 0 ] && echo "Erro: usário é root." && exit 1 || echo "Usuário não é root."

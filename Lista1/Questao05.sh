#!/bin/bash

diretorio=`date +%Y-%m-%d-%H-%M`

mkdir "/tmp/$diretorio" 2> /dev/null
#mkdir "$diretorio"
cp -r . /tmp/$diretorio



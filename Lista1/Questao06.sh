#!/bin/bash

diretorio=`date +%Y-%m-%d-%H-%M`

mkdir "/tmp/$diretorio" 2> /dev/null
cp -r . /tmp/$diretorio

tar -czf $diretorio.tar.gz /tmp/$diretorio 2> /dev/null
rm -rf /tmp/$diretorio
cp $diretorio.tar.gz . 2> /dev/null



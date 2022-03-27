#!/bin/bash

#$(cat $1) | grep -n $2 $1
cat $1 | grep -n $2 $1 | cut -d":" -f2

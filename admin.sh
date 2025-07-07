#!/bin/bash


function comoUsar(){
    echo "<programa> <primeiro_argumento>"
    exit 1
}

if [ ! -z "$1" ];then
    echo "O nome do administrador do sistema é $1"
else
    comoUsar
fi

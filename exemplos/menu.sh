#!/bin/bash

itensFavoritos=()
idade=""
nome=""

function recebeNome(){ 
    read nome
}

function adicionarItensFavoritos(){
    echo "Digite o seus item favoritos:"
    read item

    itensFavoritos+=("$item")
    echo "O item adicionado foi: $item" 
}

function mostrarTodasAsInformacoes(){
    echo "NOME:$nome"
    echo "IDADE:$idade"
    echo "ITENS FAVORITOS:"

    i=1
    for item in "${itensFavoritos[@]}"; do
        echo "Item:[$i] $item"
        ((i++))
    done
}

function recebeIdade(){ 
    read idade
}

while [ true ]; do
    echo -e "Selecione uma das opções a seguir:\n1-Informe o seu nome:\n2-Adicione itens favoritos\n3-Digite a sua idade\n4-Mostrar todas as informações\n0-Sair"
    read opc
    if [ "$opc" == "0" ]; then
        echo "Você escolheu sair do programa!"
        break
    fi 

    case "$opc" in
        1)
            recebeNome
            echo "O nome digitado foi: $nome!"
            ;;
        2) 
            adicionarItensFavoritos
            ;;

        3)
            recebeIdade
            ;;
        4) 
            mostrarTodasAsInformacoes
            ;;
        *)
            echo "Opção Inválida!"
            ;;


    esac
    
done



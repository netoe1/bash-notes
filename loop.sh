#!/bin/bash

echo "Você só vai sair do loop se DIGITAR 0!"

while true; do
    read -p "Digite um número: " SAIR

    # Verifica se é número inteiro
    if [[ "$SAIR" =~ ^[+-]?[0-9]+$ ]]; then
        if [ "$SAIR" -eq 0 ]; then
            echo "Você desejou sair do loop."
            break
        else
            echo "Você vai ficar no loop!"
        fi
    else
        echo "Digite um valor válido (número inteiro)!"
    fi
done

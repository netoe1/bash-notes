# !/bin/bash
# Receba alguns nomes e guarde em um array

nomes=()



while true; do
    read -p "Digite um nome qualquer: Digite 0 para sair!" NOME
    nomes+=($NOME)
    if [ "$NOME" == "0" ]; then
        break
    fi

done

n=${nomes[*]}

echo "Nomes finais:"
for nome in "${nomes[@]}"; do
    if [ ! $nome == '0' ]; then
        echo "$nome"
    fi
    
done
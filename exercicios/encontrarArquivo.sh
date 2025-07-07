# 🔹 5. Teste de arquivo
# Pergunta:
# Verifique se um arquivo chamado dados.txt existe no diretório atual. Se existir, exiba “Arquivo encontrado”.
#!/bin/bash
echo "Digite o nome do arquivo que você quer procurar!"
read file

if [ -f "$file" ]; then
    echo "O arquivo foi encontrado!"
    if [ -x "$file" ]; then
        echo "O arquivo têm permissão de execução!"
    fi
else
    echo "O arquivo não foi encontrado"
    exit 1
fi


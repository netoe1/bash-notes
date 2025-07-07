# 🔹 4. while e leitura
# Pergunta:
# Crie um script que leia nomes até que o usuário digite “fim”.



while [ true ]; do
    read -p "Digite um nome. Para sair, digite fim!" nome
    if [ $nome == "fim" ]; then
        echo "Você escolheu sair do loop!"
        break
    fi
done

# Pergunta:
# Peça um número ao usuário. Se for maior que 10, exiba “Maior que 10”. Caso contrário, “10 ou menor”.


echo "Digite um número"
read numero 


if [ $numero -ge 10 ]; then
    echo "O número é maior ou igual a 10!"
else
    echo "O número é menor que 10!"
fi
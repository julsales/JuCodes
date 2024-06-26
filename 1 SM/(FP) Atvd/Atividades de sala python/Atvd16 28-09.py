import os
os.system('cls')
soma=0
numero=int(input("Qual o número?: "))
#I representa os divisores
for i in range (1,numero):
    if numero%i==0:
        soma=soma+i
if numero==soma:
    print("É perfeito")
else:
    print("Não é perfeito")
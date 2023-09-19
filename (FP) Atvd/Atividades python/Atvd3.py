numcarros=int(input("\n Escreva o número de carros vendidos: "))
comissao=float(input("\n Qual sua comissão por carro?: "))
valortot=float(input("\n Escreva o valor total de suas vendas "))
salariofix=float(input("\n Escreva o seu salário fixo "))

salariofinal=salariofix+(comissao*numcarros)+(valortot*0.05)
print(f"Seu salário final é {salariofinal:.2f} reais")

cardapio={"Coxinha":5.00, "Pastel": 4.00, "Suco":3.50, "Bolo": 4.50}
print(cardapio)
resp = input("\n Deseja modificar o cardapio?: ").lower()

while resp=='s' or resp=='sim':
    mod=input("\n Deseja remover um produto [r], adicionar um produto [a] ou modificar um valor [m]?: ").lower()
    if mod=='r':
        produto=input("\n Qual produto você deseja remover?: ").capitalize()
        if cardapio.get(produto):
            cardapio.pop(produto)
            print(cardapio)
        else:
            print("Produto inválido")
    elif mod=='a':
        produto=input("\n Qual produto você deseja adicionar?: ").capitalize()
        valor=float(input(f"\n Digite o valor do {produto}:"))
        cardapio[produto]=valor
        print(cardapio)
    elif mod=='m':
        produto=input("\n Qual produto você deseja modificar o valor?: ").capitalize()
        valor=float(input(f"\n Digite o novo valor do {produto}:"))
        if cardapio.get(produto):
            cardapio[produto]=valor
        else:
          print("Produto inválido")  
    else:
        print("Não existe")
    resp = input("\n Deseja modificar o cardapio?: ").lower()

print()
print(cardapio)
        
        
        
        
    
    
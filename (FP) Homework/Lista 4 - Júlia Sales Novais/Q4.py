lista=[]
quant=(int(input("\n Quantos números essa lista vai ter?: ")))
for i in range(quant):
    num=(float(input(f"\n Digite o {i+1} número: ")))
    lista.append(num)
    
listaord=lista.copy()

for i in range(len(lista)):
    cont=0
    for j in range(len(lista)):
        if lista[i]>lista[j]:
            cont+=1
    listaord[cont]=lista[i]
print(f"\n A lista em ordem decrescente é: ")
for n in listaord:
        print(n, end=" ")
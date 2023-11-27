lista=[]
maiores=[]
menores=[]
iguais=[]
cont=0

while True:
    try:
        n=int(input("\n Digite um número inteiro: "))
        lista.append(n)
        cont=cont+1
    except ValueError:
        print("\n Isso não é um número inteiro! ")
        pass
    except EOFError:
        print("\n Isso não é um número inteiro! ")
        pass
    if cont==10:
        break
    
for j in lista:
    if j>lista[0]:
        maiores.append(j)
    elif j<lista[0]:
        menores.append(j)
    elif j==lista[0]:
        iguais.append(j)
print(f"\n Há {len(maiores)} números maiores que o primeiro valor, {len(menores)} números menores que o primeiro valor e {len(iguais)-1} números iguais ao primeiro valor")
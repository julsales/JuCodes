digitos = {'1': 2, '2': 5, '3':5, '4': 4, '5': 5, '6': 6, '7': 3, '8': 7, '9': 6, '0':6 }
lista=[]

vezes = int(input())

for i in range (vezes):
    soma=0
    numero=input()
    numero="".join(numero.split())
    lista.extend(numero)
    n=len(lista)
    for i in range (n):
        s=digitos.get(lista[i])
        soma+=s
    print(f"{soma} leds")
    lista=[]
    
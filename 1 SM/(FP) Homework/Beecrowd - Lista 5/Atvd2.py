lista=[]

vezes=int(input())

for i in range (vezes):
    frase=input().split()
    lista.extend(frase)
    n=len(lista) 
    for i in range (n):
        sec=lista[i]
        sec="".join(sec.split())
        n=sec[0]
        print(n, end="")
    print()
    lista=[]
        
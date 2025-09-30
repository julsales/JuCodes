dicionario = {'A':0,
              'B':1,
              'C':2,
              'D':3,
              'E':4,
              'F':5,
              'G':6,
              'H':7,
              'I':8,
              'J':9,
              'K':10,
              'L':11,
              'M':12,
              'N':13,
              'O':14,
              'P':15,
              'Q':16,
              'R':17,
              'S':18,
              'T':19,
              'U':20,
              'V':21,
              'W':22,
              'X':23,
              'Y':24,
              'Z':25
              }
soma = 0
lista = []
vezes = int(input())
for i in range(vezes):
    elemento = int(input())
    for j in range(elemento):
        digitos = input()
        digitos="".join(digitos.split())
        lista.extend(digitos)
        quant=len(lista)
        for k in range (quant):
            n=(dicionario.get(lista[k]))
            soma+=(n+k)+j
        lista=[]
    print(soma)
    soma=0            
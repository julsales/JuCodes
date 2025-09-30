dicionario={'suco de laranja': 120,
            'morango fresco': 85,
            'mamao': 85,
            'goiaba vermelha': 70,
            'manga': 56,
            'laranja': 50,
            'brocolis': 34 }
def calculo(dicionario):
    cont=0
    for i in range (n):
        nome=input()
        lista=list(nome.split())
        multiplicador=int(lista[0])
        del lista[0]
        novonome=' '.join(lista)
        valor=int(dicionario.get(novonome))
        cont=cont+(valor*multiplicador)
    if cont>=110 and cont<=130:
        cont=str(cont)
        resposta=[cont,"mg"]
        return ' '.join(resposta)
    elif cont<=109 and cont!=0:
        resto=(110-cont)
        resto=str(resto)
        resposta=["Mais",resto,"mg"]
        return ' '.join(resposta)
    elif cont>=131:
        resto=(cont-130)
        resto=str(resto)
        resposta=["Menos",resto,"mg"]
        return ' '.join(resposta)

n=int(input())
while True:
        if n == 0:
            break
        else:
            print(calculo(dicionario))
            n=int(input())
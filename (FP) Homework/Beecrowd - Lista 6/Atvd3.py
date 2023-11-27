
def funcao(frase):
    parenteses=0
    for i in frase:
        if i == '(':
            parenteses = parenteses + 1
        elif i == ')':
            if parenteses > 0:
                parenteses = parenteses - 1
            else:
                return "incorrect"
    if parenteses==0:
        return "correct"
    else:
        return "incorrect"
    
while True:
    try:
        frase = input().strip()
        print(funcao(frase))
    except EOFError:
        break

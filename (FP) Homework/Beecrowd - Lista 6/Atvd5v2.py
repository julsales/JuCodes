dicionario = {"suco": 120, "morango": 85, "mamao": 85, "goiaba": 70, "manga": 56, "laranja": 50, "brocolis": 34}

while True:
    T = int(input(""))
    if T == 0:
        break
    else:
        def calculo(T): 
            cont = 0
            for i in range(T):
                N = input("")
                N = N.split()
                for j in dicionario:
                    if N[1] == j:
                        cont += dicionario[j] * int(N[0])
            if cont>=110 and cont<=130:
                resp=(f"{cont} mg")
            elif cont<110 and cont!=0:
                diff=(110-cont)
                resp=(f"Mais {diff} mg")
            elif cont>130:
                diff=(cont-130)
                resp=(f"Menos {diff} mg")
            return resp
        
        print(calculo(T))
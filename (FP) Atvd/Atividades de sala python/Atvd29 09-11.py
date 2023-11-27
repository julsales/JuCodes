def armazenar_dados (nome,idade):
    dicionario[nome]=idade
    return
        
dicionario={}

while True:
    nome=(input("\n Qual seu nome?: ")).title()
    idade=(int(input("\n Qual sua idade?: ")))
    if nome=='Maria':
        continue
    if idade==-1 or nome==-1:
        print(dicionario)
        break
    else:
        armazenar_dados(nome,idade)
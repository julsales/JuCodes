nome=[]
cont=0
arquivo = open('nomes.csv','w',encoding='utf8')
while True:
    try:
        n=(input("\n Digite um nome: "))
    except EOFError:
        print("\n ??????? ")
        pass
    try:
        float(n)
        print("\n Isso não é um nome, é? Tente novamente")
    except ValueError:
        nome.append(n)
        cont=cont+1
    if cont==6:
        break
nomeformat="\n".join(nome)
arquivo.write(nomeformat)
arquivo.close()
nome.sort()
nomeformat2="\n".join(nome)
arquivo2 = open('nomes2.csv','w',encoding='utf8')
arquivo2.write(nomeformat2)
arquivo2.close()
print("\n Olhe o novo arquivo para ver os nomes ordenados!")

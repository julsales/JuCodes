n=int(input("\n Quantas pessoas vão ser cadastradas?: "))
nome=[]
sobrenome=[]
idade=[]

for i in range(n):
    nome.append(input("\n Digite o nome: "))
    sobrenome.append(input("\n Digite o sobrenome: "))
    idade.append(input("\n Qual a idade?: "))

arquivo = open('texto.txt','w',encoding='utf8')
arquivo.write("Há "+ str(n) +" pessoas cadastradas\n")
for j in range(n):
    arquivo.write("Nome: "+ nome[j] + " " + sobrenome[j] + " Idade:" + idade[j] + "\n")
arquivo.close()
            
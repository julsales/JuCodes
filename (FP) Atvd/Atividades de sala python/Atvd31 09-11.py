arquivo = open("medicoes.txt", "r")
medicoes=[]
maiores=0
for i in arquivo:
    medicoes.append(int(i))
arquivo.close()
for i in range(1,len(medicoes)):
    if medicoes[i]>medicoes[i-1]:
        maiores+=1
print(maiores)
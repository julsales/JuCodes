arquivo = open("media.txt", "r") 
#r é para leitura
soma=0.0
cont=0
for nota in arquivo:
    nota=float(nota)
    soma+=nota
    cont+=1
arquivo.close()
print (soma/cont)
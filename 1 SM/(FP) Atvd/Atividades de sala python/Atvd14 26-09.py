nota=1
soma=0
cont=1
while True:
    if nota>=0:
        nota=float(input("\n Digite a sua nota: "))
        soma+=nota
        cont+=1
    elif nota==-1:
        break
media=soma/cont
print(f"Foram registradas {cont} notas e a média é {media} ")
    
    
import os
os.system('cls')
cont1=0
cont2=0
cont3=0
cont4=0
print("\n Codigos de serviços - [1]: Tosa, [2]: Banho, [3] Banho e tosa e [4] Outros serviços.")
for i in range(5):
    codigo=int(input(f"\n Qual foi o código de serviço {i+1}?: "))
    if codigo==1:
        cont1+=1
    elif codigo==2:
        cont2+=1
    elif codigo==3:
        cont3+=1
    elif codigo==4:
        cont4+=1
    else:
        print("\n Código inválido")
print(f"\n Nesse dia foram feitas {cont1} tosas,{cont2} banhos, {cont3} banhos+tosas e {cont4} outros serviços")
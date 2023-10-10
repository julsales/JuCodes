import os
os.system ('cls')
soma_impar=0
soma_coluna=0
matriz=[[],[],[]]

for i in range(3):
    for j in range(3):
        matriz[i].append(int(input(f"Digite o número na localização [{i}] [{j}] ")))
        if matriz[i][j]%2!=0:
            soma_impar+=matriz[i][j]
            
for i in range(3):
    soma_coluna+=matriz[i][0]
    
for i in range(3):
    for j in range(3):
        print(f"{matriz[i][j]:^3}",end=" ")
    print()
        
print(f"A soma dos números ímpares é {soma_impar}, a soma da 1 coluna é {soma_coluna} e o menor número da 3 linha é ", min(matriz[2]))
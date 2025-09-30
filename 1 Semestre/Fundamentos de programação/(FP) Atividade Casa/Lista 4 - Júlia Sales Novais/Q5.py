matriz=[[],[],[]]
somad=0
soma=0
print("\n Cadastre o salário médio, tempo mínimo de experiência e o valor da hora de trabalho: ")

for i in range(3):
    for j in range(1):
        matriz[i].append(float(input(f"\n Qual o salário médio da {i+1} profissão?: ")))
        matriz[i].append(float(input(f"\n Qual o tempo mínimo de experiência da {i+1} profissão?: ")))
        matriz[i].append(float(input(f"\n Qual o valor da hora de trabalho da {i+1} profissão?: ")))
print("\n A matriz que representa esses valores é:\n")
for i in range(3):
    soma+=matriz[i][0]
    for j in range(3):
        print(f"{matriz[i][j]:^3}",end=" ")
    print()
somad=matriz[0][0]+matriz[1][1]+matriz[2][2]
media=soma/3
print(f"\n A média salarial dessas profissões é R$ {media:.2f} e a soma da diagonal é {somad}")


mouses=[]

print("\n Possíveis problemas: ")
print("\n 1- Necessita de esfera")
print("\n 2- Necessita de limpeza")
print("\n 3- Necessita de troca de cabo ou conector")
print("\n 4- Quebrado ou Inutilizado ")

quant=int(input("\n Quantos mouses foram analisados?:  "))

for i in range (quant):
    mouses.append(int(input(f"\n Qual o problema do mouse {i+1}? [Escolha entre 1,2,3 e 4]: ")))
    
v1=mouses.count(1)
v2=mouses.count(2)
v3=mouses.count(3)
v4=mouses.count(4)

p1=(v1*100)/quant
p2=(v2*100)/quant
p3=(v3*100)/quant
p4=(v4*100)/quant

print("\n\t Situação \t\t\t Quantidade\t\t Porcentual ")
print("----------------------------------------------------------------------------")
print(f"\n 1- Necessita de esfera: \t\t\t{v1} \t\t{p1:.2f}%")
print(f"\n 2- Necessita de limpeza: \t\t\t{v2} \t\t{p2:.2f}%")
print(f"\n 3- Necessita de troca de cabo ou conector: \t{v3} \t\t{p3:.2f}%")
print(f"\n 4- Quebrado ou Inutilizado: \t\t\t{v4} \t\t{p4:.2f}%")
print("----------------------------------------------------------------------------")
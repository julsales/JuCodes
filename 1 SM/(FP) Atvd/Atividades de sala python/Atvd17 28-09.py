import os
import math
os.system('cls')
eq=int(input("\n Quantas equações você quer calcular?: "))
for i in range(eq):
    a=float(input("\n Digite o valor de A: "))
    if a==0:
        print("\n Essa equação não é do 2 grau. ")
    else:
        b=float(input("\n Digite o valor de B: "))
        c=float(input("\n Digite o valor de C: "))
        delta=(b**2)-(4*a*c)
        if delta<0:
            print("\n Essa equação não possui raizes reais")
        elif delta==0:
            raiz=-b/(2*a)
            print(f"\n Essa equação possui apenas 1 raiz que é igual a {raiz:.2f} ")
        else:
            raiz1= (-b + math.sqrt(delta))/2*a
            raiz2= (-b - math.sqrt(delta))/2*a
            print(f"\n As raizes dessa equação são {raiz1:.2f} e {raiz2:.2f} ")
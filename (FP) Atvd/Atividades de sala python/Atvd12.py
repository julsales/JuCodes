import os
n1=int(input("\n Digite o primeiro número: "))
n2=int(input("\n Digite o segundo número: "))
soma=0
while n1<=n2:
    n1+=1
    if n1%2==0:
        soma+=n1
print(f"\n A soma é {soma}")
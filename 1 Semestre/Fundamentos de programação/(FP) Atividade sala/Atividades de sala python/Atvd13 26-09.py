n=1
soma=0
while(n!=0):
    if(n>0):
        n=float(input("\n Qual foi o valor da sua compra?: "))
        soma+=n
    elif(n<0):
        print("\n Valor inválido")
if (soma>1000):
    soma=soma*(90/100)
print(f"\n O valor da compra é {soma}")
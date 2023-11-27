print("\n Vamos verficar se o número é triangular! ")
num=int(input("\n Digite um número natural: "))
i=1

while True:
    produto = i*(i+1)*(i+2)
    if produto!=num:
        i+=1
    if produto==num or produto>num:
        break

if num<0:
    print("\n O número não é natural.")
else:
    if produto==num:
        print(f"\n {num} é um número triangular.")
    else:
        print(f"\n {num} não é um número triangular.")

A=float(input("Digite o valor de A: "))
B=float(input("Digite o valor de B: "))
C=float(input("Digite o valor de C: "))

delta=(B**2)-(4*A*C)
baskhara= (-B-(delta**1/2)/2) 
baskharaneg=(-B+(delta**1/2))/2
print(f"O delta dessa equação é {delta:.1f} e o X é {baskhara:.1f} e {baskharaneg:.1f} ")
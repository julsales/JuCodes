import os
os.system("cls")

consumo=float(input("Qual foi o consumo de luz?: "))

if consumo<=500:
    valor=(consumo*0.02) + 5.00
elif consumo>500 and consumo<=1000:
    valor=(consumo*10) + 5.00
else:
    valor=(consumo*35) + 5.00

print(f"\n O valor a ser pago é {valor}")
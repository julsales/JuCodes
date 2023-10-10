va=float(input("\n Qual o valor da árvore de natal?: "))
soma=0
for i in range(1,4):
    e=int(input(f"\n Quantos enfeites do tipo {i} foram comprados?: "))
    v=float(input("\n Qual é o valor unitário desse enfeite?: "))
    ve=(e*v)
    soma=ve+soma
vt=(va+soma)/21
print(f"Os funcionários irão pagar {vt:.2f}R$ cada") 
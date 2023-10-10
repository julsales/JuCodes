v=float(input("\n Qual o valor da árvore de natal?: "))
e1=int(input("\n Quantos enfeites do tipo 1 foram comprados?: "))
e2=int(input("\n Quantos enfeites do tipo 2 foram comprados?: "))
e3=int(input("\n Quantos enfeites do tipo 3 foram comprados?: "))
v1=float(input("\n Qual o valor unitário do enfeite 1?: "))
v2=float(input("\n Qual o valor unitário do enfeite 2?: "))
v3=float(input("\n Qual o valor unitário do enfeite 3?: "))

pe=(e1*v1)+(e2*v2)+(e3*v3)
vt=(pe+v)/21
print(f"Os funcionários irão pagar {vt:.2f}R$ cada")
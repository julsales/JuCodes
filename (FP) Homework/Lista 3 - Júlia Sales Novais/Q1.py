qc=0
cmr=None
cmn=None
while True:
    ac=int(input("\n Qual o ano desse carro?: "))
    vc=int(input("\n Qual a velocidade desse carro?: "))
    qc=qc+1
    if cmn is None or vc>cmn:
        cmn=vc
    if cmr is None or ac>cmr:
        cmr=ac
    resp=input("\n Deseja continuar?: [Digite N para parar] ")
    if resp=='N' or resp=='n':
        break
print(f"Foram registrados {qc} carros e o mais novo é de {cmr} e o mais rapido tem {cmn} Km/h")
    
t1=input("\n Qual o nome do primeiro time?: ")
g1=int(input("\n Quantos gols o primeiro time fez?: "))
t2=input("\n Qual o nome do segundo time?: ")
g2=int(input("\n Quantos gols o segundo time fez?: "))

if g1>g2:
    print(f"\n O time {t1} ganhou a partida com {g1} gols")
elif g2>g1:
    print(f"\n O time {t2} ganhou a partida com {g2} gols")
else:
    print(f"Empate!!")
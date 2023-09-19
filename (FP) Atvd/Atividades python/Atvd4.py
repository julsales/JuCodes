cigarros=int(input("Quantos cigarros você fuma por dia?: "))
anos=int(input("Por quantos anos você fumou?: "))

diasfumados=(anos*365)
tempomin=(10*cigarros)
diasperdidos=(diasfumados*tempomin)//1440
print(f"Você perdeu {diasperdidos} dias de vida")
import os 
os.system("cls")

arquivo=open("dados.txt", "r", encoding="utf8")

texto=arquivo.read()
print(texto)
print(len(texto))
print(len(texto.split()))

arquivo.close()

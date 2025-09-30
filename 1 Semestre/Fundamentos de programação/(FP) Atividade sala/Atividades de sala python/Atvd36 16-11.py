try:
    arquivo=open("teste.txt", "r", encoding="utf-8")
    texto=arquivo.read()
    texto=texto.split()
    for j in texto:
        if texto[j]=='a':
            texto[j]=='A'
    arquivo.close
    novoarquivo=open("teste2.txt","w", encoding="utf-8")
    novoarquivo.write(texto)
    novoarquivo.close
except FileNotFoundError:
    print("Erro ao abrir o arquivo")
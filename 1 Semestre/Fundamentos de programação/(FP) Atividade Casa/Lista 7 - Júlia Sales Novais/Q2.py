lista=["200.135.80.9",
"192.268.1.1",
"8.35.67.74",
"257.32.4.5",
"85.345.1.2",
"1.2.3.4",
"9.8.234.5",
"192.168.0.256"]
while True:
    try:
        arquivo=open("IP.txt", "r", encoding="utf-8")
        texto=arquivo.read()
        texto=texto.split("\n")
        for i in range(len(texto)):
            cont=0
            texto_individual=texto[i].split(".")
            for j in texto_individual:
                if int(j)>255:
                    cont=+1
            if cont>=1:
                print(f"\nO IP {texto[i]} não é valido :(")
            else: 
                print(f"\nO IP {texto[i]} é valido!")
        break
    except FileNotFoundError:
        arquivo=open("IP.txt","w", encoding="utf-8")
        listaformat='\n'.join(lista)
        arquivo.write(listaformat)
        arquivo.close()
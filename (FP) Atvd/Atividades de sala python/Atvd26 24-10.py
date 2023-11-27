frase=input("\n Digite uma frase: ").lower()
frase="".join(frase.split())

if frase==frase[::-1]:
    print("\n Essa frase é palindroma")
else: 
    print("\n Essa frase não é palindroma")
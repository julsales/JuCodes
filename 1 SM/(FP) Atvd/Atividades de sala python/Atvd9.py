vasc=int(input("Essa planta tem vascularização? Responda com sim[1] ou não[0]: "))
sem=int(input("Essa planta tem sementes? Responda com sim[1] ou não[0]: "))
flores=int(input("Essa planta tem flores? Responda com sim[1] ou não[0]: "))

if vasc==0 and sem==0 and flores==0:
    print("Essa planta é uma briófita")
elif vasc==1 and sem==0 and flores==0:
    print("Essa planta é uma piteridófita")
elif vasc==1 and sem==1 and flores==0:
    print("Essa planta é uma ginmnosperma")
elif vasc==1 and sem==1 and flores==1:
    print("Essa planta é uma angiosperma")
else:
    print("Valor inválido")
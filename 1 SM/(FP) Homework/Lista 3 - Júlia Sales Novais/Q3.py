import os
os.system ('cls')
id=int(input("\n Qual a idade do atleta? "))

if id==10 or id==11: 
    print("\n O atleta está na categoria pré mirim")
elif id==12 or id==13:
    print("\n O atleta está na categoria mirim")
elif id==14 or id==15:
    print("\n O atleta está na categoria infantil")
elif id==16 or id==17 or id==18:
    print("\n O atleta está na categoria juvenil")
else:
    print("\n Categoria não registrada")
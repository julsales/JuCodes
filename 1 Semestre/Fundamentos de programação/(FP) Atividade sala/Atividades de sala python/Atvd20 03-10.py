notas=[]

for i in range (5):
    notas.append(float(input("\n Digite a sua nota: ")))
    
media=sum(notas)/5
print(f"\n A média é {media:.2f}")

for nota in notas:
    if nota>media:
       print(f"\n A nota {nota} foi superior à média da sala") 
    
    
    

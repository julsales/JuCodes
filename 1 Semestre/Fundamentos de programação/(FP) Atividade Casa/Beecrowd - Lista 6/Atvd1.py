def triangulo(lista):
  lista.sort(reverse=True)
  resultados=[]
  if lista[0]>=lista[1]+lista[2]:
    return "NAO FORMA TRIANGULO"
  else:
    if lista[0]**2==lista[1]**2+lista[2]**2:
      resultados.append("TRIANGULO RETANGULO")
    if lista[0]**2>lista[1]**2+lista[2]**2:
      resultados.append("TRIANGULO OBTUSANGULO")
    if lista[0]**2<lista[1]**2+lista[2]**2:
      resultados.append("TRIANGULO ACUTANGULO")
    if lista[0]==lista[1] and lista[1]==lista[2] and lista[0]==lista[2]:
      resultados.append("TRIANGULO EQUILATERO")
    elif lista[0]==lista[1] or lista[1]==lista[2] or lista [0]==lista[2]:
      resultados.append("TRIANGULO ISOSCELES")
    return '\n'.join(resultados)
      
resposta=input()
resposta=resposta.split()
lista = list(map(float, resposta))

print(triangulo(lista))
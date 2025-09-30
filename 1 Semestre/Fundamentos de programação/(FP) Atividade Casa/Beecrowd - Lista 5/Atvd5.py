lista=[]

resposta=input()
tentativas=input().split()

lista.extend(tentativas)
n=lista.count(resposta) 
print(n)
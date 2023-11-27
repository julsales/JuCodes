avet=[]
bvet=[]
somapar=0
somaimpar=0
qimpar=0
for i in range(1,6):
    avet.append(float(input(f"\n Digite o valor do {i} A: ")))
    bvet.append(float(input(f"\n Digite o valor do {i} B: ")))
cvet=avet+bvet

for j in range(10):
    if cvet[j]%2==0:
        somapar+=cvet[j]
    if cvet[j]%2!=0:
        qimpar+=1
        somaimpar+=cvet[j]
mediaimpar=somaimpar/qimpar
print(f"\n O vetor encontrado é {cvet}, a soma dos números pares é {somapar}, a média dos número ímpares é {mediaimpar} e o menor valor de C é {min(cvet)}")
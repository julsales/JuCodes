while True:
    try:
        n=float(input("Digite um número: "))
        raiz=n**(1/2)
        if n > 0:
            print(f"A raiz desse número é {raiz:.2f}")
        if n < 0:
            print("Não é possível calcular a raiz de um número negativo")
        if n==float(n) and n>0:
            break
    except ValueError:
        print("Isso não é um número!")
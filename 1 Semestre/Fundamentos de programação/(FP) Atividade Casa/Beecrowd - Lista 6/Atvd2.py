def imposto (salario):
    if salario >= 0 and salario <= 2000.00:
        return "Isento"
    elif salario >= 2000.01 and salario <= 3000.00:
        valor=((salario-2000)*0.08)
    elif salario >= 3000.01 and salario <= 4500.00:
        valor=80+((salario-3000)*0.18)
    elif salario > 4500.00:
        valor=350+((salario-4500)*0.28)
    return valor

salario = float(input())

if salario <= 2000.1:
    print(imposto(salario))
else:
    print(f"R$ {imposto(salario):.2f}")
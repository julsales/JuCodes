level=int(input("Qual era o level do Voltorb?: "))

if level>=1 and level<=20:
    choque = 20+(level)**3
    print(f"A potência do choque foi {choque} W")
elif level>=21 and level<=40:
    choque = 8000+(level-10)**2
    print(f"A potência do choque foi {choque} W")
elif level>=41 and level<=60:
    choque = 9000+(level*5)
    print(f"A potência do choque foi {choque} W")
elif level>=61 and level<=80:
    choque = 9300+(level*3)
    print(f"A potência do choque foi {choque} W")
elif level>=81 and level<=100:
    choque = 9500+level
    print(f"A potência do choque foi {choque} W")
else:
    print("Número invalido")

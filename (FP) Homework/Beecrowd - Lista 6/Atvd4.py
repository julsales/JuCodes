def resultado (p,j1,j2,r,a):
    resultado = (int(j1) + int(j2)) % 2
    if r == '1' and a == '1':
        return('Jogador 2 ganha!')

    elif r == '1' or a == '1':
        return('Jogador 1 ganha!')

    else:
        if(resultado == 0):
            if(p == '1'):
                return ('Jogador 1 ganha!')
            else:
                return('Jogador 2 ganha!')
        elif(resultado == int(p)):
            return('Jogador 2 ganha!')
        else:
            return('Jogador 1 ganha!')
            
p, j1, j2, r, a = input().split()
print(resultado(p,j1,j2,r,a))
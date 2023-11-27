dicionario={"tesoura papel": "rajesh",
            "papel tesoura": "sheldon", 
            "papel pedra": "rajesh",
            "pedra papel": "sheldon",
            "pedra lagarto": "rajesh",
            "lagarto pedra": "sheldon",
            "lagarto spock": "rajesh",
            "spock lagarto": "sheldon",
            "spock tesoura": "rajesh",
            "tesoura spock": "sheldon",
            "tesoura lagarto": "rajesh",
            "lagarto tesoura": "sheldon",
            "lagarto papel": "rajesh",
            "papel lagarto": "sheldon",
            "papel spock": "rajesh",
            "spock papel": "sheldon",
            "spock pedra": "rajesh",
            "pedra spock": "sheldon",
            "pedra tesoura": "rajesh",
            "tesoura pedra": "sheldon",
            "tesoura tesoura": "empate",
            "pedra pedra": "empate",
            "papel papel": "empate",
            "spock spock": "empate",
            "lagarto lagarto": "empate"}

C=int(input())

for i in range (C):
    resposta = input().lower()
    resultado=dicionario.get(resposta)
    print(resultado)
    
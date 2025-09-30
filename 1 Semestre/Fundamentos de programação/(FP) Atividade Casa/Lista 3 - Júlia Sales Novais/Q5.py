n=int(input("\n Digite um número: "))
multi=1
print(f"{n}! = 1", end=" ")
for i in range(2,n+1):
    print(f"x {i}", end=" ")
    multi*=i
print(f"= {multi}")  
    
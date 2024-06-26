#escrita
manipulador = open('texto2.txt', 'w')
disciplina = input("\n  Digite a disciplina: ")
turma=input("Qual sua turma?: ")

manipulador.write(disciplina + "\n")
manipulador.write(turma)

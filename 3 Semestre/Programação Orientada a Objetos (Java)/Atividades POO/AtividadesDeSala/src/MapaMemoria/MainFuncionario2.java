package MapaMemoria;

public class MainFuncionario2 {
    public static void main(String[] args) {
        Cargo c1 = null;
        Cargo c2 = null;
        double valor = 500;
        int valorInt = 700;
        Funcionario f1 = new Funcionario("CARLOS", 1000, c2);
        Funcionario f2 = new Funcionario("MARIA", 2000, c1);
        Funcionario f3 = f2;
        c1 = new Cargo();
        c2 = new Cargo();
        System.out.println(f1.cargo);
        System.out.println(f1 == f2);
        System.out.println(f1 == f3);
        System.out.println(f2 == f3);
        c1.nome = "ANALISTA";
        c2.nome = "ARQUITETO";
        f2.nome = "JOSA";
        f1.cargo = c1;
        f2.cargo = c2;
        f3 = f1;
        System.out.println(f3.salario);
        System.out.println(f1.salario);
        System.out.println(valor);
        System.out.println(f3.salario);
        System.out.println(c1 == c2);
        System.out.println(valorInt);
        System.out.println(f2.salario);
    }
}
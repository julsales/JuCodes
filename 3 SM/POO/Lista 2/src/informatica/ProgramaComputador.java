package informatica;

import java.util.Scanner;

public class ProgramaComputador {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("Digite a descrição e a marca do processador: ");
        Modelo m1 = new Modelo(sc.next(), sc.next());
        System.out.println("Digite o clock base e o fator turbo: ");
        UCP u1 = new UCP(m1, sc.nextDouble(), sc.nextDouble());
        double clockMaximo = u1.calcularClockMaximo();
        System.out.println("Digite a capacidade RAM em GB, a capacidade disco em GB e se é Notebook (com true/false)  ");
        Computador c1= new Computador(u1,m1,sc.nextInt(),sc.nextInt(),sc.nextBoolean());
        System.out.println("O Clock máximo é: " + clockMaximo);
        System.out.println(c1.obterDescricaoPormenorizada());
    }
}

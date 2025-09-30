import java.util.Scanner;
public class JavaEstruturado3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        float n1,n2,n3,n4,n5;
        System.out.println("Escreva 5 números para fazer média deles: ");
        n1 = sc.nextFloat();
        n2 = sc.nextFloat();
        n3 = sc.nextFloat();
        n4 = sc.nextFloat();
        n5 = sc.nextFloat();
        double somaInversos = (1/n1 + 1/n2 + 1/n3 + 1/n4 + 1/n5);
        double multiplicacao = (n1*n2*n3*n4*n5);
        double mediaAritimetica = (n1+n2+n3+n4+n5)/5;
        double mediaGeometrica = Math.pow(multiplicacao, 1.0/5);
        double mediaHarmonica = 5/somaInversos;
        System.out.printf("\nA média Aritimética é %.2f%n",mediaAritimetica);
        System.out.printf("\nA média Geométrica é %.2f%n",mediaGeometrica);
        System.out.printf("\nA média Harmônica é %.2f%n",mediaHarmonica);
    }
}

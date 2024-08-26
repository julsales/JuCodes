package Abstracao;
import java.util.Scanner;

public class Produtos {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Preco p1 = new Preco();
        Preco p2 = new Preco();
        p1.nome = sc.next();
        p1.precoInicial = sc.nextFloat();
        p2.nome = sc.next();
        p2.precoInicial = sc.nextFloat();
        double pf1 = p1.precoFinal();
        double pf2 = p2.precoFinal();
        System.out.printf("\nO preco final do produto " + p1.nome + " é %.2f",pf1);
        System.out.printf("\nO preco final do produto " + p2.nome + " é %.2f",pf2);
    }
}

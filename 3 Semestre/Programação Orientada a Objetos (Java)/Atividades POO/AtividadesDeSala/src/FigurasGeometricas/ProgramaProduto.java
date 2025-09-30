package FigurasGeometricas;

import java.util.Scanner;

public class ProgramaProduto {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Produto p1 = new Produto(sc.next(),sc.nextFloat());
        Produto p2 = new Produto(sc.next(),sc.nextFloat());
        System.out.printf("\nO preco final do produto " + p1.nome + " é %.2f",p1.precoFinal(p1.precoInicial));
        System.out.printf("\nO preco final do produto " + p2.nome + " é %.2f",p2.precoFinal(p2.precoInicial));
    }
}

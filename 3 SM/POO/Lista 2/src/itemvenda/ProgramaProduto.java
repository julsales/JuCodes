package itemvenda;

import java.util.Scanner;

public class ProgramaProduto {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("Digite o código, nome e preço do produto: ");
        Produto p1 = new Produto(sc.nextLong(),sc.next(), sc.nextDouble());
        System.out.println("Digite o código de pagamento: ");
        int codigoPgmt = sc.nextInt();
        if (codigoPgmt < 1 || codigoPgmt > 7) {
            System.out.println("Código de pagamento inválido.");
            return;
        }
        System.out.println("Digite a quantidade, a aliquota e se é isento (com true ou false)");
        ItemVenda i1 = new ItemVenda(p1,TipoPagamento.values()[codigoPgmt-1],sc.nextInt(),sc.nextDouble(),sc.nextBoolean());
        System.out.println("Digite o custo rateado: ");
        double custoRateado=sc.nextDouble();
        System.out.printf("Imposto: R$ %.2f%n", i1.calcularImposto());
        System.out.printf("Valor Total: R$ %.2f%n", i1.calcularValorTotal());
        System.out.printf("Lucro do Item: R$ %.2f%n", i1.calcularLucroItem(custoRateado));
    }
}

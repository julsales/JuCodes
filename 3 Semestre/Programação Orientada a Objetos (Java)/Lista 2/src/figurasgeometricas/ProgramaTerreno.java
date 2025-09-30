package figurasgeometricas;

import java.util.Scanner;

public class ProgramaTerreno {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("Digite o a forma do terreno (1- triangular e 2- circular): ");
        int forma = sc.nextInt();
        if (forma != 1 && forma != 2 ) {
                System.out.println("TIPO ERRADO");
                return;
        }
        double valorTerreno;
        double area = 0;
        System.out.println("- Digite o endereço do terreno -");
        System.out.println("Digite o CEP do terreno: ");
        long cep = sc.nextLong();
        System.out.println("Digite o logradouro do terreno: ");
        String logradouro = sc.next();
        System.out.println("Digite o numero do terreno: ");
        int numero = sc.nextInt();
        System.out.println("Digite o complemento do terreno: ");
        String complemento = sc.next();
        Endereco e1 = new Endereco(cep,logradouro,numero,complemento);
        if (forma == 1) {
            System.out.println("Digite as 3 medidas do terreno triangular: ");
            Triangulo t1 = new Triangulo(sc.nextDouble(), sc.nextDouble(), sc.nextDouble());
            if (!t1.medidasRepresentamUmTriangulo()) {
                System.out.println("As medidas fornecidas não formam um triângulo");
                return;
            }
            area = t1.calcularArea();
        }if (forma == 2) {
            System.out.println("Digite o raio do terreno circular: ");
            Circulo c1 = new Circulo(sc.nextDouble());
            area = c1.calcularArea();
        }
        System.out.println("Digite o valor por metro quadrado: ");
        Terreno te1 = new Terreno(e1,sc.nextDouble());
        te1.area=area;
        valorTerreno = te1.calcularValorTerreno();
        System.out.println("O terreno localizado no Cep " + e1.cep + ", de logradouro "+ e1.numero+ ", de número " + e1.numero + " e complemento " + e1.complemento);
        System.out.printf("Custa: R$ %.2f%n ", valorTerreno);
    }
}

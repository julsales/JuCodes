package figurasGeometricas;
import java.util.Scanner;

public class MainQuadrilateros {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("\n Digite o lados do retangulo: ");
        Retangulo r1 = new Retangulo(sc.nextDouble(), sc.nextDouble());
        Quadrado q1 = new Quadrado(r1.base);
        System.out.println("\n O perimetro do retangulo é " + r1.CalcularPerimetro(r1.base,r1.altura) + "\n A área do retangulo é: " + r1.CalcularArea(r1.base,r1.altura));
        System.out.println("\n O perimetro do quadrado é " + r1.CalcularPerimetro(r1.base,r1.base) + "\n A área do quadrado é: " + r1.CalcularArea(r1.base,r1.base));
    }
}


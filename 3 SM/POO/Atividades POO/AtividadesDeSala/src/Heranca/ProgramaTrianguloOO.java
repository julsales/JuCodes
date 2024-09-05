package Heranca;

import java.util.Scanner;

public class ProgramaTrianguloOO {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        Scanner ENTRADA = new Scanner(System.in);
        Triangulo t1 = new Triangulo(ENTRADA.nextDouble(),ENTRADA.nextDouble(),ENTRADA.nextDouble());
        Triangulo t2 = new Triangulo(ENTRADA.nextDouble(),ENTRADA.nextDouble(),ENTRADA.nextDouble());
        double p1 = t1.calcularPerimetro(t1.lado1, t1.lado2, t1.lado3);
        double a1 = t1.calcularArea(t1.lado1, t1.lado2, t1.lado3);
        double p2 = t2.calcularPerimetro(t2.lado2, t2.lado2, t2.lado3);
        double a2 = t2.calcularArea(t2.lado1, t2.lado2, t2.lado3);
        System.out.println(p1);
        System.out.println(a1);
        System.out.println(p2);
        System.out.println(a2);

    }

}

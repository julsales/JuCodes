//Ler do teclado os raios de 3 círculos, calcular
//e imprimir a área e o perímetro de cada um dos três círculos.
//perimetro = 2*PI*R
//area = P*R*R
package Abstracao;
import java.util.Scanner;

public class Raios {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Circulo t1 = new Circulo();
        Circulo t2 = new Circulo();
        Circulo t3 = new Circulo();
        t1.raio = sc.nextDouble();
        t2.raio = sc.nextDouble();
        t3.raio = sc.nextDouble();
        double p1 = t1.calcularPerimetro();
        double p2 = t2.calcularPerimetro();
        double p3 = t3.calcularPerimetro();
        double a1 = t1.calcularArea();
        double a2 = t2.calcularArea();
        double a3 = t3.calcularArea();
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        System.out.println(a1);
        System.out.println(a2);
        System.out.println(a3);
    }
}

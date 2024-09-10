//Ler do teclado os raios de 3 círculos, calcular
//e imprimir a área e o perímetro de cada um dos três círculos.
//perimetro = 2*PI*R
//area = P*R*R
package figurasgeometricas;

import java.util.Scanner;

public class ProgramaCirculo {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Circulo t1 = new Circulo(sc.nextDouble());
        Circulo t2 = new Circulo(sc.nextDouble());
        Circulo t3 = new Circulo(sc.nextDouble());
        System.out.println(t1.calcularPerimetro(t1.raio));
        System.out.println(t2.calcularPerimetro(t2.raio));
        System.out.println(t3.calcularPerimetro(t3.raio));
        System.out.println(t1.calcularArea(t1.raio));
        System.out.println(t2.calcularArea(t2.raio));
        System.out.println(t3.calcularArea(t3.raio));
    }
}

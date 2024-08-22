package Atividades;

import java.util.Scanner;

public class Atvd2 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        float a = 0;
        do {
            a = sc.nextFloat();
            if (a<2 || a>20){
                System.out.println(a);
            }
        }while (a!=1.0);

    }
}

package Atividades;
import java.util.Scanner;
public class Atvd1 {
    private static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int a = sc.nextInt();
        if(a<0){
            System.out.println("O número é menor que 0");
        }else{
            for (int i = 0; i < a; i++) {
                if(i%2==0 && i!=0){
                    System.out.println(i);
                }
            }
        }
    }
}

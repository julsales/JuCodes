import java.util.Scanner;

public class JavaEstruturado1{
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int a = sc.nextInt();
        int fatorial = 1;
        if(a<0){
            System.out.println("Menor que 0");
        }else if(a>16){
            System.out.println("OVERFLOW");
        }else{
                for (int i=1; i<=a; i++) {
                    fatorial *= i;
            }
            System.out.println("O fatorial de "+ a +" é: "+ fatorial);
        }
    }
}

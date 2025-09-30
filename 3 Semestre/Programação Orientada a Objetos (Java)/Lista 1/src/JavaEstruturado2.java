import java.util.Scanner;

public class JavaEstruturado2 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        int n;
        int cont = 0;
        do{
           n=sc.nextInt();
           if (n>=5 && n<=5000){
               cont=cont+n;
           }
        }while (n>0);
        System.out.println("A soma dos números é " + cont);
    }
}

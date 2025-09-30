import java.util.Scanner;

public class JavaEstruturado4 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        float n1,n2, resultado;
        System.out.println("Qual operação deseja fazer?: " +
                "\n1- Soma" +
                "\n2- Subtração" +
                "\n3- Produto" +
                "\n4- Divisão");
        int Metodo = sc.nextInt();
        System.out.println("Digite 2 numeros reais: ");
        n1 = sc.nextFloat();
        n2 = sc.nextFloat();
        if (Metodo==1){
            resultado = n1 + n2;
            System.out.printf("\nA soma é %.2f%n",resultado);
        }else if(Metodo==2){
            resultado = n1 - n2;
            System.out.printf("\nA subtração é %.2f%n",resultado);
        }else if(Metodo==3){
            resultado = n1 * n2;
            System.out.printf("\nA subtração é %.2f%n",resultado);
        }
        else if(Metodo==4){
            if (n2==0){
                System.out.println("DIV ZERO");
            }else{
                resultado = n1/n2;
                System.out.printf("\nA subtração é %.2f%n",resultado);
            }
        }else{
            System.out.println("OPC ERRADA");
        }
    }
}

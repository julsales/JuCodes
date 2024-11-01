package sobrecarga;
import java.math.BigDecimal;

public class TesteCalculadora {

    public static void main(String[] args) {
        Calculadora calculadora = new Calculadora();

        System.out.println("Resultado 1: " + calculadora.exponenciar(5, (byte)2));
        System.out.println("Resultado 2: " + calculadora.exponenciar(10L, 3));
        System.out.println("Resultado 3: " + calculadora.exponenciar(2, 2.5));
        System.out.println("Resultado 4: " + calculadora.exponenciar(new BigDecimal("2"), new BigDecimal("3")));
        //System.out.println("Resultado 5: " + calculadora.exponenciar(new BigDecimal("2"), 1.5f));
    }
}
// :14:57
//java: no suitable method found for exponenciar(java.math.BigDecimal,float)
//    method sobrecarga.Calculadora.exponenciar(double,double) is not applicable
//      (argument mismatch; java.math.BigDecimal cannot be converted to double)
//    method sobrecarga.Calculadora.exponenciar(long,long) is not applicable
//      (argument mismatch; java.math.BigDecimal cannot be converted to long)
//    method sobrecarga.Calculadora.exponenciar(java.math.BigDecimal,java.math.BigDecimal) is not applicable
//      (argument mismatch; float cannot be converted to java.math.BigDecimal)
//Resultado 1: 25.0
//Resultado 2: 1000.0
//Resultado 3: 5.656854249492381
//Resultado 4: 8.0
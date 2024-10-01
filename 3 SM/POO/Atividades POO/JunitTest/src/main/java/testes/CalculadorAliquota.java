package testes;

public class CalculadorAliquota {
    public static double calcularAliquota(int idade,double renda) {
        double aliquota=0;
        if (renda>2000 && renda<5000){
            aliquota=10;
        }
        if (renda>5000){
            aliquota = 20;
        }
        if (idade>=60 && idade<=74){
            aliquota = aliquota * 0.8;
        }
        if (idade>=75 || renda<2000){
            aliquota=0;
        }
        return aliquota;
    }
}

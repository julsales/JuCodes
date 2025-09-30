package sobrecarga;

import java.math.BigDecimal;

public class Calculadora {

    public double exponenciar(double base, double expoente) {
        return Math.pow(base, expoente);
    }

    public double exponenciar(long base, long expoente) {
        return Math.pow(base, expoente);
    }

    public double exponenciar(BigDecimal base, BigDecimal expoente) {
        return Math.pow(base.doubleValue(), expoente.doubleValue());
    }
}

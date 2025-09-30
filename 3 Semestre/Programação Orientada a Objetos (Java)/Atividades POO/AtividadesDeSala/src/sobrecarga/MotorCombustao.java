package sobrecarga;

public class MotorCombustao extends Motor {
    private double consumoMedio;

    public MotorCombustao() {
        super();
    }

    public MotorCombustao(long codigo, String nome, double consumoMedio) {
        super(codigo, nome);
        this.consumoMedio = consumoMedio;
    }

    public MotorCombustao(long codigo, String nome, double potencia, double vazao, double consumoMedio) {
        super(codigo, nome, potencia, vazao);
        this.consumoMedio = consumoMedio;
    }

    public double getConsumoMedio() {
        return consumoMedio;
    }

    public void setConsumoMedio(double consumoMedio) {
        this.consumoMedio = consumoMedio;
    }
}

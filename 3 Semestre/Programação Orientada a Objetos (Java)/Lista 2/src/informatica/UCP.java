package informatica;

public class UCP {
    Modelo modelo;
    double clockBase;
    double fatorTurbo;

    public UCP(Modelo modelo, double clockBase, double fatorTurbo) {
        this.modelo = modelo;
        this.clockBase = clockBase;
        this.fatorTurbo = fatorTurbo;
    }
    double calcularClockMaximo(){
        return clockBase * fatorTurbo;
    }
}

package figurasgeometricas;

public class Circulo {
    double raio;

    public Circulo(double raio) {
        this.raio = raio;
    }
    double obterDiametro() {
        return raio * 2;
    }
    double calcularArea() {
        return Math.PI * Math.pow(raio, 2);
    }
    double calcularPerimetro() {
        return 2 * Math.PI * raio;
    }
    double calcularComprimentoArco(double anguloArco) {
        return (Math.PI * anguloArco * raio)/180;
    }
}

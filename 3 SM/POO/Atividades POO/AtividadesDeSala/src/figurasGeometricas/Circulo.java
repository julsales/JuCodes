package figurasGeometricas;

class Circulo {
    double raio;
    Circulo(double raio) {
        this.raio = raio;
    }
    double calcularPerimetro(double raio) {
        return 2 * Math.PI * raio;
    }double calcularArea(double raio) {
        return Math.PI * raio * raio;
    }
}

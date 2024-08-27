package figurasgeometricas;

class Circulo {
    double raio;
    double calcularPerimetro() {
        return 2 * Math.PI * raio;
    }double calcularArea() {
        return Math.PI * raio * raio;
    }
}

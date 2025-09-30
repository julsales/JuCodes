package figurasgeometricas;
class Triangulo {
    double a;
    double b;
    double c;
    public Triangulo(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }
    double calcularArea() {
        double s = calcularPerimetro();
        s = s / 2;
        return Math.sqrt(s*(s - a)*(s - b)*(s - c));

    }
    double calcularPerimetro() {
        return (a + b + c);
    }
    boolean medidasRepresentamUmTriangulo() {
        return (a < (b + c)) &&
                (b < (a + c)) &&
                (c < (a + b));
    }
}
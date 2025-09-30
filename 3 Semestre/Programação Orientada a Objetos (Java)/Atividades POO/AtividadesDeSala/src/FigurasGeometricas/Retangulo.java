package FigurasGeometricas;

public class Retangulo {
    double base;
    double altura;
    Retangulo(double largura, double altura) {
        this.base = largura;
        this.altura = altura;
    }
    double CalcularArea(double base, double altura) {
        return base*altura;
    }
    double CalcularPerimetro(double base, double altura) {
        return (2*base)+(2*altura);
    }
}

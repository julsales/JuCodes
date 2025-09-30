package figurasgeometricas;

public class Terreno {
    Endereco endereco;
    double area;
    double valorPorMetroQuadrado;

    public Terreno(Endereco endereco, double valorPorMetroQuadrado) {
        this.endereco = endereco;
        this.valorPorMetroQuadrado = valorPorMetroQuadrado;
    }

    double calcularValorTerreno(){
        return area * valorPorMetroQuadrado;
    }
}

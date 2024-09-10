package figurasgeometricas;

class Produto {
    float precoInicial;
    String nome;
    Produto(String nome, float precoInicial){
        this.nome = nome;
        this.precoInicial = precoInicial;
    }
    double precoFinal(float precoInicial){
        float imposto=10;
        return precoInicial * (1+ imposto/100);
    }
}

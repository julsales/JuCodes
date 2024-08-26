package Abstracao;

class Preco {
    float precoInicial;
    String nome;
    double precoFinal(){
        float imposto=10;
        return precoInicial * (1+ imposto/100);
    }
}

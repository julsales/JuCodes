package MapaMemoria;

public class Umano {
    int eta;
    String nome;
    Umano compagno;

    public Umano(int eta, String nome) {
        this.eta = eta;
        this.nome = nome;
    }
    void compleanno() {
        eta++;
    }
}
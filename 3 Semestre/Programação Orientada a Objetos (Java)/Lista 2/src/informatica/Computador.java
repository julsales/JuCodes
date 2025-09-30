package informatica;

public class Computador {
    UCP ucp;
    Modelo modelo;
    int capacidadeRamEmGb;
    int capacidadeDiscoEmGB;
    boolean ehNotebook;

    public Computador(UCP ucp, Modelo modelo, int capacidadeRamEmGb, int capacidadeDiscoEmGb, boolean ehNotebook) {
        this.ucp = ucp;
        this.modelo = modelo;
        this.capacidadeRamEmGb = capacidadeRamEmGb;
        this.capacidadeDiscoEmGB = capacidadeDiscoEmGb;
        this.ehNotebook = ehNotebook;
    }
    String obterDescricaoPormenorizada() {
        String tipoComputador;
        if (ehNotebook){
            tipoComputador = "Notebook";
        }else{
            tipoComputador = "Computador";
        }
        return String.format("%s com processador %s %s, %d GB de RAM, %d GB de disco.", tipoComputador, modelo.marca, modelo.descricao, capacidadeRamEmGb, capacidadeDiscoEmGB);
    }
}

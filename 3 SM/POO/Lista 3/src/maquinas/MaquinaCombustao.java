package maquinas;

public class MaquinaCombustao extends Maquina {
    enum TipoCombustivel{
        diesel, gasolina, querosene, etanol
    }
    private TipoCombustivel tipoCombustivel;

    MaquinaCombustao(String nome, double potencia,TipoCombustivel tipoCombustivel){
        super(nome, potencia);
        this.tipoCombustivel = tipoCombustivel;
    }
}

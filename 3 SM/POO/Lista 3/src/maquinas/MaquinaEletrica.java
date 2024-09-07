package maquinas;

import static java.lang.Boolean.TRUE;

public class MaquinaEletrica extends Maquina{
    double voltagem;
    boolean corrente;
    MaquinaEletrica(String nome, double potencia, double voltagem, boolean corrente){
        super(nome, potencia);
        this.voltagem = voltagem;
        this.corrente = corrente;
    }
    double correnteUtilizada(double voltagem,double potencia){
        return potencia/voltagem;
    }
    String tipoCorrente(boolean corrente){
        if (corrente == TRUE){
            return "Continua";
        }
        return "Alternada";
    }
}

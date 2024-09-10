package maquinas;

import java.util.Scanner;

public class  MainMaquinas {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        MaquinaEletrica me1 = new MaquinaEletrica("Gerador",1500,220,true);
        MaquinaCombustao mc1 = new MaquinaCombustao("Motor Gasolina",1000, MaquinaCombustao.TipoCombustivel.gasolina);
        System.out.println("Nome da maquina elétrica: " + me1.nome);
        System.out.println("Potência da máquina elétrica: " + me1.potencia);
        System.out.println("Corrente da maquina elétrica: " + me1.correnteUtilizada(me1.potencia,me1.voltagem));
        System.out.println("Tipo da corrente da maquina elétrica: " + me1.tipoCorrente(me1.corrente));
        System.out.println("Nome da maquina combustão: " + mc1.nome);
        System.out.println("Potência da máquina combustão: " + mc1.potencia);
        System.out.println("Hashcode Maquina elétrica " + me1.hashCode());
        System.out.println("Hashcode Maquina combustão " + mc1.hashCode());
        System.out.println("Representação em string " + me1);
        System.out.println("Representação em string " + mc1);
        MaquinaEletrica me2 = new MaquinaEletrica("Gerador",1500,220,true);
        System.out.println("Maquina eletrica 1 é igual a maquina eletrica 2? " + me1.equals(me2));
        MaquinaEletrica me3 = me2;
        System.out.println("Maquina eletrica 2 é igual a maquina eletrica 3? " + me1.equals(me3));
    }
}

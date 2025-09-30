package br.edu.cesarschool.cc.poo;

import br.edu.cesarschool.cc.poo.meiotransporte.motorizado.Carro;
import br.edu.cesarschool.cc.poo.meiotransporte.naomotorizado.AsaDelta;
import br.edu.cesarschool.cc.poo.meiotransporte.TipoTracao;
import br.edu.cesarschool.cc.poo.figurageometrica.Circulo;

public class TesteClasses {

    public static void main(String[] args) {
        Carro carro = new Carro("Carro X", 1000, 180, 150, 50, 10);
        System.out.println("Eficiência do carro: " + carro.calcularEficiencia());

        AsaDelta asaDelta = new AsaDelta("Asa Delta", 200, 50, TipoTracao.VENTO);
        System.out.println("Nome da Asa Delta: " + asaDelta.getNome());

        Circulo c1 = new Circulo(10);
        System.out.println("Área do círculo: " + c1.calcularArea());
        System.out.println("Perímetro do círculo: " + c1.calcularPerimetro());
    }
}

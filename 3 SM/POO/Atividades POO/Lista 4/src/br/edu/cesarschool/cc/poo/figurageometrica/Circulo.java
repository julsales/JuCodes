package br.edu.cesarschool.cc.poo.figurageometrica;

public class Circulo extends Elipse{

    public Circulo(double raio){
        super("OBJETO CIRCULAR", raio, raio);
    }

    double getRaio(){
        return super.getRaioMaior();
    }
}

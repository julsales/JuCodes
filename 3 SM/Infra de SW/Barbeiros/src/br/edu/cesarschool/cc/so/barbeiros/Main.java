package br.edu.cesarschool.cc.so.barbeiros;
import br.edu.cesarschool.cc.so.barbeiros.barbearia.Barbearia;
import br.edu.cesarschool.cc.so.barbeiros.pessoa.Barbeiro;
import br.edu.cesarschool.cc.so.barbeiros.pessoa.Cliente;

import java.util.Scanner;

public class Main {
    private static Scanner scan = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("Digite o numero de barbeiros: ");
        int numBarbeiros = scan.nextInt();

        System.out.println("Digite o numero de assentos da barbearia: ");
        int numAssentos = scan.nextInt();

        Barbearia barbearia = new Barbearia(numAssentos);
        Barbeiro[] barbeiros = new Barbeiro[numBarbeiros];

        for (int i = 0; i < numBarbeiros; i++) {
            barbeiros[i] = new Barbeiro(i + 1, barbearia);
            new Thread(barbeiros[i]).start();
        }
        while (true){
            System.out.println("Digite o numero de pessoas que vao passar pela barbearia: ");
            int numClientes = scan.nextInt();
            if (numClientes<=0){
                break;
            }
            for (int i = 0; i < numClientes; i++) {
                Cliente cliente = new Cliente(i + 1, barbearia);
                new Thread(cliente).start();
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }try{
                Thread.sleep(numClientes * 250);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        scan.close();
    }
}
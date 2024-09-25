package br.edu.cesarschool.cc.so.barbeiros.pessoa;
import br.edu.cesarschool.cc.so.barbeiros.barbearia.Barbearia;
import java.util.concurrent.ThreadLocalRandom;

public class Barbeiro extends Pessoa implements Runnable {
    private final Barbearia barbearia;

    public Barbeiro(int id, Barbearia barbearia) {
        super(id);
        this.barbearia = barbearia;
    }

    @Override
    public void run() {
        try {
            while (true) {
                Cliente cliente = barbearia.proximoCliente(id);
                if (cliente != null) {
                    System.out.println("Barbeiro " + id + " acordou! Começando os trabalhos!" );
                    System.out.println("Barbeiro " + id + " cortando o cabelo do Cliente " + cliente.getId());
                    int random=ThreadLocalRandom.current().nextInt(1000, 3000);
                    Thread.sleep(random);
                    barbearia.corteTerminado(cliente);
                }
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
package br.edu.cesarschool.cc.so.barbeiros.pessoa;
import br.edu.cesarschool.cc.so.barbeiros.barbearia.Barbearia;
import java.util.concurrent.ThreadLocalRandom;

public class Barbeiro extends Pessoa implements Runnable {
    private final Barbearia barbearia;
    private boolean dormindo;

    public Barbeiro(int id, Barbearia barbearia) {
        super(id);
        this.barbearia = barbearia;
        this.dormindo = false;
    }

    @Override

    public void run() {
        try {
            while (true) {
                Cliente cliente;
                synchronized (barbearia) {
                    if (barbearia.filaVazia()){
                        if (!dormindo){
                            System.out.println("Barbeiro " + id + " indo dormir... não há clientes.");
                            dormindo = true;
                        }
                        barbearia.wait();
                    }
                    cliente=barbearia.proximoCliente();
                    if (dormindo && cliente!=null) {
                        System.out.println("Barbeiro " + id + " acordou! Começando os trabalhos.");
                        dormindo = false;
                    }
                }
                if (cliente==null) {
                    continue;
                }
                System.out.println("Cliente " + cliente.getId() + " cortando o cabelo com Barbeiro " + id);
                int random = ThreadLocalRandom.current().nextInt(1000, 3000);
                Thread.sleep(random);
                barbearia.corteTerminado(cliente);
                synchronized (barbearia) {
                    barbearia.notifyAll();
                }
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
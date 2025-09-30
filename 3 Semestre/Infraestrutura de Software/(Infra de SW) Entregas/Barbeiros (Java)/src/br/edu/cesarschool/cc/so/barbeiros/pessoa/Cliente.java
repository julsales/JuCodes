package br.edu.cesarschool.cc.so.barbeiros.pessoa;
import br.edu.cesarschool.cc.so.barbeiros.barbearia.Barbearia;

import java.util.concurrent.ThreadLocalRandom;

public class Cliente extends Pessoa implements Runnable {
    private final Barbearia barbearia;

    public Cliente(int id, Barbearia barbearia) {
        super(id);
        this.barbearia = barbearia;
    }

    @Override
    public void run() {
        try {
            boolean gotHaircut = barbearia.cortaCabelo(this);
            if (!gotHaircut) {
                System.out.println("Cliente " + id + " tentou entrar na barbearia, mas está lotada... indo dar uma voltinha");
            }
            int random= ThreadLocalRandom.current().nextInt(3000, 5000);
            Thread.sleep(random);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
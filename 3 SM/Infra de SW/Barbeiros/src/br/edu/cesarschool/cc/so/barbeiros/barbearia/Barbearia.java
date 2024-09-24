package br.edu.cesarschool.cc.so.barbeiros.barbearia;
import br.edu.cesarschool.cc.so.barbeiros.pessoa.Cliente;

import java.util.LinkedList;
import java.util.Queue;

public class Barbearia {
    private final int capacidade;
    private final Queue<Cliente> filaClientes;

    public Barbearia(int numCadeiras) {
        this.capacidade = numCadeiras;
        this.filaClientes = new LinkedList<>();
    }

    public synchronized boolean cortaCabelo(Cliente cliente) throws InterruptedException {
        if (filaClientes.size() < capacidade) {
            filaClientes.add(cliente);
            System.out.println("Cliente " + cliente.getId() + " esperando o corte...");
            notifyAll();
            return true;
        }
        return false;
    }

    public synchronized Cliente proximoCliente(int id) throws InterruptedException {
        while (filaClientes.isEmpty()) {
            System.out.println("Barbeiro " + id + " dormindo...");
            wait();
        }
        return filaClientes.poll();
    }

    public synchronized void corteTerminado(Cliente cliente) {
        System.out.println("Cliente " + cliente.getId() + " terminou o corte e está saindo da barbearia.");
        notifyAll();
    }
}

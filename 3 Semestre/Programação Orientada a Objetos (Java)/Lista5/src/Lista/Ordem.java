package Lista;

import java.time.LocalDate;

public class Ordem {
    private int prazoAtendimento;
    private LocalDate dataAbertura;
    private Cliente cliente;
    private Servico servico;

    public Ordem( int prazoAtendimento, LocalDate dataAbertura, Cliente cliente, Servico servico) {
        this.prazoAtendimento = prazoAtendimento;
        this.dataAbertura = dataAbertura;
        this.cliente = cliente;
        this.servico = servico;
    }
    public int getPrazoAtendimento() {
        return prazoAtendimento;
    }
    public void setPrazoAtendimento(int prazoAtendimento) {
        this.prazoAtendimento = prazoAtendimento;
    }
    public LocalDate getDataAbertura() {
        return dataAbertura;
    }
    public Cliente getCliente() {
        return cliente;
    }
    public Servico getServico() {
        return servico;
    }
    public long ObterNumero(int sequencial){
        return 0;
    }
}

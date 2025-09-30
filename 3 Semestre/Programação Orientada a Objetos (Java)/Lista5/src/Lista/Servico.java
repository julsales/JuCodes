package Lista;

public class Servico {
    private long codigo;
    private String nome;
    private double preco;
    private Ordem[] ordem;

    public Servico(long codigo, String nome, double preco, Ordem ordem) {
        this.codigo = codigo;
        this.nome = nome;
        this.preco = preco;
        this.ordem = new Ordem[]{ordem};
    }
    public long getCodigo() {
        return codigo;
    }
    public void setCodigo(long codigo) {
        this.codigo = codigo;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public double getPreco() {
        return preco;
    }
    public void setPreco(double preco) {
        this.preco = preco;
    }
    public Ordem[] getOrdem() {
        return ordem;
    }
    private void aumentarPreco(double valor) {
    }
    void reduzirPreco() {

    }
}

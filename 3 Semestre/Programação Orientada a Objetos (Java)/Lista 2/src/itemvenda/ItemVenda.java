package itemvenda;

public class ItemVenda {
    Produto produto;
    TipoPagamento pagamento;
    int quantidade;
    double aliquotaImposto;
    boolean isentoImposto;

    public ItemVenda(Produto produto, TipoPagamento pagamento, int quantidade, double aliquotaImposto, boolean isentoImposto) {
        this.produto = produto;
        this.pagamento = pagamento;
        this.quantidade = quantidade;
        this.aliquotaImposto = aliquotaImposto;
        this.isentoImposto = isentoImposto;
    }
    double calcularImposto() {
        double imposto;
        if(isentoImposto){
            imposto=0.0;
        }else{
            imposto=(aliquotaImposto/100) * produto.preco * quantidade;
        }
        return imposto;
    }
    double calcularValorTotal() {
        return (produto.preco*quantidade) + calcularImposto();
    }
    double calcularLucroItem(double custoRateado){
        return calcularValorTotal() - calcularImposto() - custoRateado - pagamento.tarifa;
    }
}

package itemvenda;

public enum TipoPagamento {
    DINHEIRO(1, "Dinheiro", 0.0, false),
    CARTAO_CREDITO(2, "Cartão de Crédito", 0.02, true),
    CARTAO_DEBITO(3, "Cartão de Débito", 0.01, true),
    CHEQUE(4, "Cheque", 0.0, false),
    VALE_ALIMENTACAO_PAPEL(5, "Vale Alimentação (Papel)", 0.0, false),
    VALE_ALIMENTACAO_CARTAO(6, "Vale Alimentação (Cartão)", 0.01, true),
    PIX(7, "PIX", 0.0, true);

    final int codigo;
    final String descricao;
    final double tarifa;
    final boolean indicadorPagamentoEletronico;

    TipoPagamento(int codigo, String descricao, double tarifa, boolean indicadorPagamentoEletronico) {
        this.codigo = codigo;
        this.descricao = descricao;
        this.tarifa = tarifa;
        this.indicadorPagamentoEletronico = indicadorPagamentoEletronico;
    }
}

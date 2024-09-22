package Strings;

public class ProgramaString {
    public static void main(String[] args) {
        StringUtils utils = new StringUtils();

        String textoOriginal = "Este é um texto secreto com palavras proibidas como teste e exemplo";
        String[] palavrasProibidas = {"secreto", "proibidas"};

        String textoCensurado = utils.obterTextoCensurado(textoOriginal, palavrasProibidas);
        System.out.println("Texto original: " + textoOriginal);
        System.out.println("Texto censurado: " + textoCensurado);

        String textoParaMaiorPalavra = "Vamos encontrar a maior palavra nesta frase simples";

        String maiorPalavra = utils.obterMaiorPalavra(textoParaMaiorPalavra);
        System.out.println("Texto para maior palavra: " + textoParaMaiorPalavra);
        System.out.println("Maior palavra encontrada: " + maiorPalavra);
    }
}


package Strings;

public class StringUtils {
    //Este método deve remover do textoOriginal todas as
    //palavras lá existentes que constem em palavrasProibidas, e retornar o
    //novo texto com as palavras removidas. Se textoOriginal for null, retornar
    //null. Se palavrasProibidas for null ou vazio, retornar textoOriginal.
    String obterTextoCensurado(String textoOriginal, String[] palavrasProibidas){
        if(textoOriginal==null || textoOriginal.isEmpty()){
            return null;
        }
        if(palavrasProibidas==null || palavrasProibidas.length==0){
            return textoOriginal;
        }
        String textoCensurado = textoOriginal;

        for(String palavra : palavrasProibidas){
            if (palavra != null && !palavra.isEmpty()){
                textoCensurado = textoCensurado.replace(palavra, "");
            }
        }
        return textoCensurado.trim().replaceAll("\\s+", " ");
    }

    String obterMaiorPalavra(String texto){
        //Este método deve analisar todas as
        //palavras contidas em texto e retornar a maior palavra (a que possui maior
        //quantidade de caracteres) encontrada.
        if(texto==null || texto.isEmpty()) {
            return null;
        }
        String[] palavras = texto.split("\\s+");
        String maiorPalavra = palavras[0];

        for (String palavra : palavras) {
            if (palavra != null && !palavra.isEmpty()) {
                if (palavra.length() > maiorPalavra.length()) {
                    maiorPalavra = palavra;
                }
            }
        }
        return maiorPalavra;
    }
}

package Strings;

public class ArrayUtils {
    public static String[] ordenar(String[] nomes){
        if(nomes==null){
            return null;
        }
        if(nomes.length==0){
            return new String[0];
        }
        String[] ordenado = nomes.clone();
        for(int i=0; i<ordenado.length-1; i++){
            for(int j=ordenado.length-1; j>=i; j--){
                if(ordenado[j].compareTo(ordenado[j+1])<0){
                    String aux = ordenado[j];
                    ordenado[j] = ordenado[j+1];
                    ordenado[j+1] = aux;
                }
            }
        }
        return ordenado;
    }
    public static void espelhar(int[] valores){
        if(valores==null || valores.length==0){
            return;
        }
        for (int i=0; i<valores.length/2; i++) {
            int aux = valores[i];
            valores[i] = valores[valores.length-1-i];
            valores[valores.length-1-i] = aux;
        }
    }
}

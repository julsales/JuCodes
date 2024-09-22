package Strings;

public class ProgramaArray {
    public static void main(String[] args) {
        String[] nomes = {"Carlos", "Ana", "Bruno", "Pedro", "Lucas"};

        String[] nomesOrdenados = ArrayUtils.ordenar(nomes);

        System.out.println("Array original de nomes:");
        for (String nome : nomes) {
            System.out.print(nome + " ");
        }
        System.out.println("\nArray ordenado de nomes:");
        if (nomesOrdenados != null) {
            for (String nome : nomesOrdenados) {
                System.out.print(nome + " ");
            }
        }

        int[] valores = {1, 2, 3, 4, 5, 6};

        System.out.println("\n\nArray original de inteiros:");
        for (int valor : valores) {
            System.out.print(valor + " ");
        }

        ArrayUtils.espelhar(valores);

        System.out.println("\nArray espelhado de inteiros:");
        for (int valor : valores) {
            System.out.print(valor + " ");
        }
    }
}

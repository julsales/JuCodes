package MapaMemoria;

public class ProgrammaQuattro{
    public static void main(String[] args) {
        Umano u1 = new Umano(20, "CARLO");
        Umano u2 = new Umano(18, "ROBERTA");
        System.out.println(u2.compagno);
        u1.compagno = u2;
        Umano u3 = u1; // PONTO 1
        Umano u4 = cambiareCompagno(u1, "PAOLA");
        u3.compleanno();
        u4.compleanno();
        System.out.println(u1.eta);
        System.out.println(u3.compagno.nome);
        System.out.println(u3.compagno.eta);
        u1 = new Umano(33, "PIETRO"); // PONTO 2
        System.out.println(u3.nome);
        u3 = u1; // PONTO 3
    }
    static Umano cambiareCompagno(Umano u, String nome) {
// TV - estudem o que esta construção significa!!
        return u.compagno = new Umano(u.eta, nome);
    }
}
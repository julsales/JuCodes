import testes.CalculadorAliquota;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class TesteAliquota {

    @Test
    public void testAliquotaIdadeMenorQue60ERendaMenorQue2000() {
        double resultado = CalculadorAliquota.calcularAliquota(50, 1500);
        assertEquals(0, resultado, "A alíquota deveria ser 0 para renda menor que 2000.");
    }

    @Test
    public void testAliquotaIdadeMaiorQue75() {
        double resultado = CalculadorAliquota.calcularAliquota(80, 3000);
        assertEquals(0, resultado, "A alíquota deveria ser 0 para idade maior que 75.");
    }

    @Test
    public void testAliquotaIdadeEntre60E74RendaEntre2000E5000() {
        double resultado = CalculadorAliquota.calcularAliquota(65, 3000);
        assertEquals(8, resultado, "A alíquota deveria ser 2 (10 * 0.8) para renda entre 2000 e 5000 e idade entre 60 e 74.");
    }

    @Test
    public void testAliquotaIdadeMenorQue60RendaEntre2000E5000() {
        double resultado = CalculadorAliquota.calcularAliquota(50, 3000);
        assertEquals(10, resultado, "A alíquota deveria ser 10 para renda entre 2000 e 5000 e idade menor que 60.");
    }

    @Test
    public void testAliquotaIdadeEntre60E74RendaMaiorQue5000() {
        double resultado = CalculadorAliquota.calcularAliquota(65, 6000);
        assertEquals(16, resultado, "A alíquota deveria ser 4 (20 * 0.8) para renda maior que 5000 e idade entre 60 e 74.");
    }

    @Test
    public void testAliquotaIdadeMenorQue60RendaMaiorQue5000() {
        double resultado = CalculadorAliquota.calcularAliquota(50, 6000);
        assertEquals(20, resultado, "A alíquota deveria ser 20 para renda maior que 5000 e idade menor que 60.");
    }
}


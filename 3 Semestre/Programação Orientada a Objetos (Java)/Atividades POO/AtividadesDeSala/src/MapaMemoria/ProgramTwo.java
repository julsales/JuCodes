package MapaMemoria;

public class ProgramTwo {
    public static void main(String[] args) {
        Computer c1 = new Computer(new Cpu("I5", 2.1),

                "C021", "DELL");

        Computer c2 = c1;
        Computer c3 = new Computer(c2.cpu, "Macbook", "Apple");
        Cpu cp1 = c1.cpu;
        c1.cpu = new Cpu("I7", 2.8);
        cp1.overClock(1.1);
        System.out.println(c1.cpu.clock); // PONTO 1
        c3.cpu.overClock(1.3);
        System.out.println(cp1.clock);
        c3 = new Computer(c3.cpu, "A540", "HP"); // PONTO 2
        System.out.println(c3.cpu.clock);
        changeCpu(c2); // PONTO 3
        System.out.println(c1.cpu.name);
        changeCpu(c1);
        System.out.println(c2.cpu.name);
    }
    static void changeCpu(Computer c) {
        c.cpu = new Cpu("RYZEN9", 3.3);
    }
}
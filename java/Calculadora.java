public class Calculadora {

    static {
        System.loadLibrary("calculadora");
    }

    public native int soma(int a, int b);

    public static void main(String args[]) {
        var calculadora = new Calculadora();
        int resultado = calculadora.soma(1,2);

        System.out.println("O resultado da soma eh: " + resultado);
    }

}
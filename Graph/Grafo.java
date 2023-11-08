import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class Grafo {
    // Mapa de adyacencia
    private Map<Integer, List<Integer>> adyacencia;
    // Mapa de posiciones
    private Map<Integer, Posicion> posiciones;

    // Constructor
    public Grafo() {
        // Inicializar mapas
        adyacencia = new HashMap<>();
        posiciones = new HashMap<>();
    }

    // Agregar nodo
    public void agregarNodo(int nodo, Posicion posicion) {
        adyacencia.put(nodo, new ArrayList<>());
        posiciones.put(nodo, posicion);
    }

    public void agregarAdyacencia(int nodo1, int nodo2) {
        adyacencia.get(nodo1).add(nodo2);
        adyacencia.get(nodo2).add(nodo1);
    }

    // Imprimir grafo
    public void imprimirGrafo() {
        for (int nodo : adyacencia.keySet()) {
            System.out.print("Nodo " + nodo + " está conectado a: ");
            for (int vecino : adyacencia.get(nodo)) {
                System.out.print(vecino + " ");
            }
            System.out.println(" y tiene posición: (" + posiciones.get(nodo).getX() + "," + posiciones.get(nodo).getY() + ")");
        }
    }

    public static void main(String[] args) {
        Grafo grafo = new Grafo();

        grafo.agregarNodo(0, new Posicion(0, 0));
        grafo.agregarNodo(1, new Posicion(1, 1));
        grafo.agregarNodo(2, new Posicion(2, 2));

        grafo.agregarAdyacencia(0, 1);
        grafo.agregarAdyacencia(1, 2);

        grafo.imprimirGrafo();
    }
}

class Posicion {
    private int x;
    private int y;

    public Posicion(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }
}

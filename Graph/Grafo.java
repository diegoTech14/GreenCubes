import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class Grafo {

    // Mapa de adyacencia

    // Por ejemplo: 0 -> [1, 2], 1 -> [0, 2], 2 -> [0, 1, 3, 4]

    private Map<NodoGenerico, List<NodoGenerico>> adyacencia;


    // Mapa de posiciones

    // Por ejemplo: 0 -> (0, 0), 1 -> (1, 1), 2 -> (273, 23)

    private Map<NodoGenerico, Posicion> posiciones;

    // Constructor
    public Grafo() {
        // Inicializar mapas
        adyacencia = new HashMap<>();
        posiciones = new HashMap<>();
    }

    // Agregar nodo
    public void agregarNodo(NodoGenerico nodo, Posicion posicion) {
        adyacencia.put(nodo, new ArrayList<>());
        posiciones.put(nodo, posicion);
    }

    // Agregar adyacencia
    public void agregarAdyacencia(NodoGenerico nodo1, NodoGenerico nodo2) {
        adyacencia.get(nodo1).add(nodo2);
        adyacencia.get(nodo2).add(nodo1);
    }

    // Imprimir grafo
    // public void imprimirGrafo() {
    //     for (NodoGenerico nodo : adyacencia.keySet()) {
    //         System.out.print("Nodo " + nodo + " esta conectado a: ");
    //         for (NodoGenerico vecino : adyacencia.get(nodo)) {
    //             System.out.print(vecino + " ");
    //         }
    //         System.out.println(" y tiene posicion: (" + posiciones.get(nodo).getX() + "," + posiciones.get(nodo).getY() + ")");
    //     }
    // }

    // Imprimir grafo con objetos
    public void imprimirGrafo() {
        for (NodoGenerico nodo : adyacencia.keySet()) {
            System.out.print("Nodo " + nodo.getId() + " esta conectado a: ");
            for (NodoGenerico vecino : adyacencia.get(nodo)) {
                System.out.print(vecino.getId() + " ");
            }
            System.out.println(" y tiene posicion: (" + posiciones.get(nodo).getX() + "," + posiciones.get(nodo).getY() + ")");
        }
    }

    public static void main(String[] args) {
        Grafo grafo = new Grafo();

        NodoGenerico nodo1 = new NodoGenerico(0, new Posicion(0, 0));
        NodoGenerico nodo2 = new NodoGenerico(1, new Posicion(1, 1));
        NodoGenerico nodo3 = new NodoGenerico(2, new Posicion(273, 23));

        grafo.agregarNodo(nodo1, nodo1.getPosicion());
        grafo.agregarNodo(nodo2, nodo2.getPosicion());
        grafo.agregarNodo(nodo3, nodo3.getPosicion());

        grafo.agregarAdyacencia(nodo1, nodo2);
        grafo.agregarAdyacencia(nodo1, nodo3);

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

class NodoGenerico {
    private int id;
    private Posicion posicion;

    public NodoGenerico(int id, Posicion posicion) {
        this.id = id;
        this.posicion = posicion;
    }

    public int getId() {
        return id;
    }

    public Posicion getPosicion() {
        return posicion;
    }
}

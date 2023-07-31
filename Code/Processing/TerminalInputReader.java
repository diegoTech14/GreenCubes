// Se comunica con el puerto serial para leer datos enviados desde Arduino
import processing.serial.*;

public class TerminalInputReader {
    // Objeto Serial se comunica con arduino
    private Serial arduino;

    /* Variable para almacenar datos del puerto serial que se esta usando, en mi caso COM1.
     * Para saber el puerto con arduino conectado:
     * 1. Dentro del IDE de Arduino, ir a Herramientas
     * 2. Opcion de Puerto
     * 3. El que este seleccionado es el que hay que poner aqui
     */
    private String serialData = "";

    public TerminalInputReader(String portName, int baudRate) {
        arduino = new Serial(null, portName, baudRate);
    }

    // Habria que hacer cambios dependiendo de la forma en el que se manejen finalmente los prints ya que cada salto de linea
    // deja de recibir informacion. Eso me hace pensar que sera necesario hacer ajustes en arduino o aca pero actualmente no hay certeza.
    public void readData() {
        // Revisa si hay datos disponibles para leer
        while (arduino.available() > 0) {
            // Lee un carácter del puerto serial
            char savedChar = (char) arduino.read(); 
            // Si el carácter es un salto de línea, muestra el mensaje recibido
            if (savedChar == '\n') {
                System.out.println("Mensaje recibido: " + serialData);
                // Reinicia la variable para el próximo mensaje
                serialData = "";
            } else {
                // Almacena el carácter en la variable serialData
                serialData += savedChar; 
            }
        }
    }

    public static void main(String[] args) {
        // Aca hay que hacer ajustes si es necesario
        String portName = "COM1";
        // Comunicacion serial tiene que estar igual en Arduino
        int baudRate = 9600;

        TerminalInputReader inputReader = new TerminalInputReader(portName, baudRate);

        while (true) {
            inputReader.readData();
        }
    }
}



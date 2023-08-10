import processing.serial.*;

Serial puerto;
int distancia1, distancia2, distancia3;

void setup() {
  size(400, 300);
  puerto = new Serial(this, "COM3", 9600);
}

void draw() {
  terminal();
  
  // Check if cubo is found or not based on the distances
  if (distancia1 < 50) {
    println("Cubo encontrado en el sensor 1");
  } else {
    println("Cubo no encontrado en el sensor 1");
  }
}

void terminal() {
  while (puerto.available() > 0) {
    String datos = puerto.readStringUntil('\n');
    if (datos != null) {
      datos = datos.trim();
      println("Esto recibí: " + datos);

      if (datos.startsWith("Distance ")) {
        int posInicioValor = datos.indexOf(":") + 2; // Posición justo después del ": "
        int valor = Integer.parseInt(datos.substring(posInicioValor));

        int sensor = int(datos.charAt(9) - '0');

        if (sensor == 1) {
          distancia1 = valor;
        } else if (sensor == 2) {
          distancia2 = valor;
        } else if (sensor == 3) {
          distancia3 = valor;
        }
      }
    }
  }
  //println("Distance 1: " + distancia1 + " cm");
  //println("Distance 2: " + distancia2 + " cm");
  //println("Distance 3: " + distancia3 + " cm");
}



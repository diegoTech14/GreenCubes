import processing.serial.*;
MainScreen mScreen;
Dictionary dict;
Serial puerto;
int estado;

void setup() {
  //fullScreen(P3D);
  size(1920, 1080);
  mScreen = new MainScreen(this);
  puerto = new Serial(this, "COM7", 9600); 
  dict = new Dictionary();
  //mScreen.testModel3D();
  
}

void draw() {
  mScreen.main();
  mScreen.callSelector();
  terminal();
}

void terminal() {
  while (puerto.available() > 0) {
    String datos = puerto.readStringUntil('\n');
    if (datos != null) {
      datos = datos.trim();
      //println("Esto recibí: " + datos);

      if (datos.startsWith("Value ")) {
        int posInicioValor = datos.indexOf(":") + 2; // Posición justo después del ": "
        int valor = Integer.parseInt(datos.substring(posInicioValor));

        int sensor = int(datos.charAt(6) - '0');
        
        if (sensor == 1) {     
          estado = valor;
        } else if (sensor == 2) {
          estado = valor;
        } else if (sensor == 3) {          
          estado = valor;
        } else if (sensor == 4) {          
          estado = valor;
        } else if (sensor == 5) {          
          estado = valor;
        } else if (sensor == 6) {          
          estado = valor;
        } else if (sensor == 7) {          
          estado = valor;
        }
        mScreen.actions(estado);
      }
    }
  }


}

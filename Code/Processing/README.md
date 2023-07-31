Arduino to Processing
========
> Este programa de Java recibe informacion del Monitor de Arduino (dentro del codigo se explica como funciona y se detallan los posibles ajustes que podria tener).

> En terminos generales, la clase TerminalInputReader tiene un constructor con 2 argumentos. Numero de puerto serial y la velocidad de comunicacion.
> Dentro del metodo readData hay un bucle while que verifica si hay informacion para que sea recibida. Si existe informacion, se lee un char desde el puerto serial
y se almacena en la variable savedChar.
> Si se lee un salto de linea de tipo "/n" entonces se tomara como que ese es todo el mensaje. Llegado este punto el mensaje recibido sera desplegado por el print.


## Explicacion
```bash
# Codigo de Arduino (ejemplo)
void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.println("Hola desde Arduino");
  delay(1000);
}
```
Este codigo imprime en el monitor serial el mensaje: "Hola desde Arduino", una vez se imprima este mensaje el codigo en Java se dara cuenta que hay
un mensaje disponible y procedera a leerlo. Recibira primero "H', despues "o" y asi hasta toparse con el salto de linea.

Nota: es válido siempre que Arduino envíe los mensajes de manera que cada mensaje esté delimitado por un salto de línea y no envíe múltiples mensajes en un solo envío. Si Arduino envía mensajes más complejos o con múltiples líneas, es posible que exista la necesidad de implementar un mecanismo de comunicación más avanzado, como agregar un codigo de comunicación específico, para garantizar una lectura y procesamiento adecuados de los datos en Java. Pero esto es una decision que bajo mi perspectiva se deberia analizar de manera grupal.
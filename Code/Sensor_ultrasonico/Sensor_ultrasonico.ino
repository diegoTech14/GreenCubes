/* Codigo revisado por David y Marco
 * Funciona con la maqueta
 * Este programa utiliza un sensor de ultrasonido para medir la distancia
 * entre el sensor y un objeto. El pin trigPin se utiliza para enviar un
 * pulso de ultrasonido, mientras que el pin echoPin recibe el eco del
 * pulso reflejado por el objeto. La duración del eco recibido se utiliza
 * para calcular la distancia y luego se muestra en centímetros a través
 * del monitor serial. Si la distancia está fuera del rango útil (más allá
 * de 400 cm o menos de 2 cm), se mostrará "Out of range".
 */
#define trigPin 8
#define echoPin 9

void setup() {
  Serial.begin(9600);
  pinMode(trigPin, OUTPUT); 
  pinMode(echoPin, INPUT);  
}

void loop() {
  float duration, distance;
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = (duration / 2) * 0.0344;  

  if (distance >= 400 || distance <= 2) {
    Serial.print("Distance = ");
    Serial.println("Out of range");
  } else {
    Serial.print("Distance = ");
    Serial.print(distance);
    Serial.println(" cm");
  }
  
  delay(500);
}
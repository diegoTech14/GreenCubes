const int pinX = A0;
const int pinY = A1;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int value_X = analogRead(pinX);
  int value_Y = analogRead(pinY);
  
  int trackedValue_X = map(value_X, 0, 1023, -100, 100);
  int trackedValue_Y = map(value_Y, 0, 1023, -100, 100);
  
  Serial.print("Coordenadas en X = ");
  Serial.print(trackedValue_X);
  Serial.print(" y en Y = ");
  Serial.println(trackedValue_Y);
  
  delay(100);
}

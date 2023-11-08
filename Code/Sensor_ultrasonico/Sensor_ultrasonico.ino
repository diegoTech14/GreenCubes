#include <NewPing.h>

#define TRIGGER_PIN_1 8
#define ECHO_PIN_1 9
#define TRIGGER_PIN_2 10
#define ECHO_PIN_2 11
#define TRIGGER_PIN_3 12
#define ECHO_PIN_3 13

NewPing sonar1(TRIGGER_PIN_1, ECHO_PIN_1, 200);
NewPing sonar2(TRIGGER_PIN_2, ECHO_PIN_2, 200);
NewPing sonar3(TRIGGER_PIN_3, ECHO_PIN_3, 200);

void setup() {
  Serial.begin(9600);
}

void loop() {
  delay(50);

  unsigned int distance1 = sonar1.ping_cm();
  unsigned int distance2 = sonar2.ping_cm();
  unsigned int distance3 = sonar3.ping_cm();

  static unsigned int ultima_distancia1 = 0;
  static unsigned int ultima_distancia2 = 0;
  static unsigned int ultima_distancia3 = 0;
  
  if (abs(distance1 - ultima_distancia1) >= 5) {
    if (distance1 == 0 || distance1 > 400) {
      Serial.print("Sensor 1: ");
      Serial.println("1");
    } else {
      Serial.print("Sensor 1: ");
      Serial.println("4");
      //Serial.println(" cm");
    }
    ultima_distancia1 = distance1;
  }

  if (abs(distance2 - ultima_distancia2) >= 5) {
    if (distance2 < 7) {
      //Serial.println("Distance 2: Out of range");
    } else {
      //Serial.print("Distance 2: ");
      //Serial.println(distance2);
      //Serial.println(" cm");
    }
    ultima_distancia2 = distance2;
  }

  if (abs(distance3 - ultima_distancia3) >= 5) {
    if (distance3 < 7) {
      Serial.print("Sensor 3: ");
      Serial.println("3");
    } else {
      Serial.print("Sensor 3: ");
      Serial.println("6");
      //Serial.println(" cm");
    }
    ultima_distancia3 = distance3;
  }

  delay(500);
}
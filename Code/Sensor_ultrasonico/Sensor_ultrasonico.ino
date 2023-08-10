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

  if (distance1 == 0 || distance1 > 400) {
    Serial.println("Distance 1: Out of range");
  } else {
    Serial.print("Distance 1: ");
    Serial.println(distance1);
    //Serial.println(" cm");
  }

  if (distance2 == 0 || distance2 > 400) {
    //Serial.println("Distance 2: Out of range");
  } else {
    Serial.print("Distance 2: ");
    Serial.println(distance2);
    //Serial.println(" cm");
  }

  if (distance3 == 0 || distance3 > 400) {
    Serial.println("Distance 3: Out of range");
  } else {
    Serial.print("Distance 3: ");
    Serial.println(distance3);
  }

  delay(500);
}
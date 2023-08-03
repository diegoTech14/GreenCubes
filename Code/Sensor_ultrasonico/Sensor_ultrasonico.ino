#include <NewPing.h>

#define TRIGGER_PIN_1 8
#define ECHO_PIN_1 9
#define TRIGGER_PIN_2 10
#define ECHO_PIN_2 11

// Max distance for sensors is 200cm
NewPing sonar1(TRIGGER_PIN_1, ECHO_PIN_1, 200);
NewPing sonar2(TRIGGER_PIN_2, ECHO_PIN_2, 200);

void setup() {
  Serial.begin(9600);
}

void loop() {
  delay(50);

  unsigned int distance1 = sonar1.ping_cm();
  unsigned int distance2 = sonar2.ping_cm();

  if (distance1 == 0 || distance1 > 400) {
    Serial.println("Distance 1: Out of range");
  } else {
    Serial.print("Distance 1: ");
    Serial.print(distance1);
    Serial.println(" cm");
  }

  if (distance2 == 0 || distance2 > 400) {
    Serial.println("Distance 2: Out of range");
  } else {
    Serial.print("Distance 2: ");
    Serial.print(distance2);
    Serial.println(" cm");
  }

  delay(500);
}

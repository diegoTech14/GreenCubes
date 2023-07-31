#define BUTTON_PIN 4
#define trigPin 8
#define echoPin 9

void setup() {
  Serial.begin(9600);
  pinMode(BUTTON_PIN, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  byte buttonState = digitalRead(BUTTON_PIN);
  
  float duration, distance;
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = (duration / 2) * 0.0344;  

  if (distance >= 400 || distance <= 2) {
    Serial.print("Ultrasonic Distance = ");
    Serial.println("Out of range");
  } else {
    Serial.print("Ultrasonic Distance = ");
    Serial.print(distance);
    Serial.println(" cm");
  }

  if (buttonState == HIGH) {
      Serial.println("Button is pressed");
  } else {
      Serial.println("Button is not pressed");
  }
  
  delay(500);
}


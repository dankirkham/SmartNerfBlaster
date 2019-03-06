#define PIN_TRIGGER_SWITCH 2
#define PIN_FLYWHEEL_SWITCH 3
#define PIN_PUSHER_RESET_SWITCH 4
#define PIN_DOOR_SWITCH 5
#define PIN_MAGAZINE_SWITCH 6

#define PIN_LED_1 8
#define PIN_LED_2 9
#define PIN_LED_3 7

#define PIN_PUSHER_MOTOR 10
#define PIN_FLYWHEEL_MOTOR 11

void setup() {
  // Setup pins
  pinMode(PIN_TRIGGER_SWITCH, INPUT);
  pinMode(PIN_FLYWHEEL_SWITCH, INPUT);
  pinMode(PIN_PUSHER_RESET_SWITCH, INPUT);
  pinMode(PIN_DOOR_SWITCH, INPUT);
  pinMode(PIN_MAGAZINE_SWITCH, INPUT);

  pinMode(PIN_LED_1, OUTPUT);
  pinMode(PIN_LED_2, OUTPUT);
  pinMode(PIN_LED_3, OUTPUT);

  pinMode(PIN_PUSHER_MOTOR, OUTPUT);
  pinMode(PIN_FLYWHEEL_MOTOR, OUTPUT);

  // Das blinkenlitzen on startup
  for (int i = 0; i < 6; i++) {
    digitalWrite(PIN_LED_1, HIGH);
    digitalWrite(PIN_LED_2, HIGH);
    digitalWrite(PIN_LED_3, HIGH);
    delay(250);
    digitalWrite(PIN_LED_1, LOW);
    digitalWrite(PIN_LED_2, LOW);
    digitalWrite(PIN_LED_3, LOW);
    delay(250);
  }
}

void loop() {
  int trigger_switch_pressed = !digitalRead(PIN_TRIGGER_SWITCH);
  if (trigger_switch_pressed) {
    analogWrite(PIN_PUSHER_MOTOR, 137);
    digitalWrite(PIN_LED_1, HIGH);
  } else {
    analogWrite(PIN_PUSHER_MOTOR, 0);
    digitalWrite(PIN_LED_1, LOW);
  }


  int flywheel_switch_pressed = !digitalRead(PIN_FLYWHEEL_SWITCH);
  if (flywheel_switch_pressed) {
    analogWrite(PIN_FLYWHEEL_MOTOR, 137);
    digitalWrite(PIN_LED_2, HIGH);
  } else {
    analogWrite(PIN_FLYWHEEL_MOTOR, 0);
    digitalWrite(PIN_LED_2, LOW);
  }
}

// Configuration
#define PUSHER_CHOOCH_FACTOR 100
#define FLYWHEEL_CHOOCH_FACTOR 50
#define BURST_SHOTS 3
#define FLYWHEEL_SPINUP_DELAY_MILLIS 1000
#define DEBOUNCE_FIRE_SELECT_MILLIS 5
#define DEBOUNCE_PUSHER_FALLING_EDGE_MILLIS 5
#define DEBOUNCE_PUSHER_RISING_EDGE_MILLIS 5
#define DEBOUNCE_TRIGGER_FALLING_EDGE_MILLIS 5

// Constants
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

#define FIREMODE_SAFE 0
#define FIREMODE_SINGLE 1
#define FIREMODE_BURST 2
#define FIREMODE_AUTO 3
#define FIREMODE_COUNT 4

#define STATE_IDLE 0
#define STATE_DOOR_AJAR 1
#define STATE_FIRE_SELECT_DEBOUNCE 2
#define STATE_FLYWHEEL_SPINUP 3
#define STATE_READY 4
#define STATE_AUTO 5
#define STATE_PUSHER_FALLING_EDGE_WAIT 6
#define STATE_PUSHER_DEBOUCE_FALLING_EDGE 7
#define STATE_PUSHER_RISING_EDGE_WAIT 8
#define STATE_PUSHER_DEBOUNCE_RISING_EDGE 9
#define STATE_TRIGGER_FALLING_EDGE_WAIT 10
#define STATE_TRIGGER_DEBOUNCE_FALLING_EDGE 11

// Variables
int firemode = FIREMODE_SAFE;
int state = STATE_IDLE;
int shots_remaining;

unsigned long trigger_millis;
unsigned long pusher_millis;
unsigned long spinup_millis;

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
  // LED for firemode
  if (firemode == FIREMODE_SAFE) {
    digitalWrite(PIN_LED_1, LOW);
    digitalWrite(PIN_LED_2, LOW);
    digitalWrite(PIN_LED_3, LOW);
  } else if (firemode == FIREMODE_SINGLE) {
    digitalWrite(PIN_LED_1, HIGH);
    digitalWrite(PIN_LED_2, LOW);
    digitalWrite(PIN_LED_3, LOW);
  } else if (firemode == FIREMODE_BURST) {
    digitalWrite(PIN_LED_1, HIGH);
    digitalWrite(PIN_LED_2, HIGH);
    digitalWrite(PIN_LED_3, LOW);
  } else { // firemode == FIREMODE_AUTO
    digitalWrite(PIN_LED_1, HIGH);
    digitalWrite(PIN_LED_2, HIGH);
    digitalWrite(PIN_LED_3, HIGH);
  }

  // Read inputs
  int trigger_switch_pressed = !digitalRead(PIN_TRIGGER_SWITCH);
  int flywheel_switch_pressed = !digitalRead(PIN_FLYWHEEL_SWITCH);
  int pusher_reset_pressed = !digitalRead(PIN_PUSHER_RESET_SWITCH);
  int door_closed = !digitalRead(PIN_DOOR_SWITCH);

  // Get time
  int new_millis = millis();

  // State Machine
  switch (state) {
    case STATE_IDLE:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, 0);

      if (flywheel_switch_pressed && firemode != FIREMODE_SAFE) {
        spinup_millis = new_millis;

        state = STATE_FLYWHEEL_SPINUP;
      } else if (!door_closed) {
        state = STATE_DOOR_AJAR;
      }
      break;

    case STATE_DOOR_AJAR:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, 0);

      if (flywheel_switch_pressed && firemode != FIREMODE_SAFE) {
        spinup_millis = new_millis;

        state = STATE_FLYWHEEL_SPINUP;
      } else if (door_closed) {
        state = STATE_IDLE;
      } else if (trigger_switch_pressed) {
        trigger_millis = new_millis;

        firemode++;
        if (firemode >= FIREMODE_COUNT)
          firemode = 0;

        state = STATE_FIRE_SELECT_DEBOUNCE;
      }
      break;

    case STATE_FIRE_SELECT_DEBOUNCE:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, 0);

      if (!trigger_switch_pressed & ((new_millis - trigger_millis) > DEBOUNCE_FIRE_SELECT_MILLIS)) {
        state = STATE_DOOR_AJAR;
      }
      break;

    case STATE_FLYWHEEL_SPINUP:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (!flywheel_switch_pressed) {
        state = STATE_IDLE;
      } else if ((new_millis - spinup_millis) > FLYWHEEL_SPINUP_DELAY_MILLIS) {
        state = STATE_READY;
      }
      break;

    case STATE_READY:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (!flywheel_switch_pressed) {
        state = STATE_IDLE;
      } else if (trigger_switch_pressed) {
        if (firemode == FIREMODE_AUTO) {
          state = STATE_AUTO;
        } else {
          if (firemode == FIREMODE_BURST) {
            shots_remaining = BURST_SHOTS;
          } else if (firemode == FIREMODE_SINGLE) {
            shots_remaining = 1;
          } else {
            shots_remaining = 0;
          }

          if (pusher_reset_pressed) {
            state = STATE_PUSHER_FALLING_EDGE_WAIT;
          } else {
            state = STATE_PUSHER_RISING_EDGE_WAIT;
          }
        }
      }
      break;

    case STATE_AUTO:
      analogWrite(PIN_PUSHER_MOTOR, PUSHER_CHOOCH_FACTOR);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (!trigger_switch_pressed) {
        state = STATE_READY;
      }
      break;

    case STATE_PUSHER_FALLING_EDGE_WAIT:
      analogWrite(PIN_PUSHER_MOTOR, PUSHER_CHOOCH_FACTOR);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (!pusher_reset_pressed) {
        shots_remaining--;

        if (shots_remaining <= 0) {
          state = STATE_TRIGGER_FALLING_EDGE_WAIT;
        } else {
          pusher_millis = new_millis;

          state = STATE_PUSHER_DEBOUCE_FALLING_EDGE;
        }
      }
      break;

    case STATE_PUSHER_DEBOUCE_FALLING_EDGE:
      analogWrite(PIN_PUSHER_MOTOR, PUSHER_CHOOCH_FACTOR);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if ((new_millis - pusher_millis) > DEBOUNCE_PUSHER_FALLING_EDGE_MILLIS) {
        state = STATE_PUSHER_RISING_EDGE_WAIT;
      }
      break;

    case STATE_PUSHER_RISING_EDGE_WAIT:
      analogWrite(PIN_PUSHER_MOTOR, PUSHER_CHOOCH_FACTOR);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (pusher_reset_pressed) {
        pusher_millis = new_millis;

        state = STATE_PUSHER_DEBOUNCE_RISING_EDGE;
      }
      break;

    case STATE_PUSHER_DEBOUNCE_RISING_EDGE:
      analogWrite(PIN_PUSHER_MOTOR, PUSHER_CHOOCH_FACTOR);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if ((new_millis - pusher_millis) > DEBOUNCE_PUSHER_RISING_EDGE_MILLIS) {
        state = STATE_PUSHER_FALLING_EDGE_WAIT;
      }
      break;

    case STATE_TRIGGER_FALLING_EDGE_WAIT:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if (!trigger_switch_pressed) {
        trigger_millis = new_millis;

        state = STATE_TRIGGER_DEBOUNCE_FALLING_EDGE;
      }
      break;

    case STATE_TRIGGER_DEBOUNCE_FALLING_EDGE:
      analogWrite(PIN_PUSHER_MOTOR, 0);
      analogWrite(PIN_FLYWHEEL_MOTOR, FLYWHEEL_CHOOCH_FACTOR);

      if ((new_millis - trigger_millis) > DEBOUNCE_TRIGGER_FALLING_EDGE_MILLIS) {
        state = STATE_READY;
      }
      break;
  }
}

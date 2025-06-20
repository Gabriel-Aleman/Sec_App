#include <IRremote.h>

const int RECV_PIN = 2;  // Pin del receptor IR
IRsend irsend;  // Objeto para enviar IR
IRrecv irrecv(RECV_PIN);
decode_results results;

const int buttonPin = 4;  // the number of the pushbutton pin
const int ledPin = 13;    // the number of the LED pin
int buttonState = 0;  // variable for reading the pushbutton status





int code = 0;
void setup() {
  Serial.begin(9600);
  irrecv.enableIRIn();  // Inicia el receptor



  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);
  
}

void loop() {
  if (irrecv.decode(&results)) {
    Serial.print("Código recibido: ");
    Serial.println(results.value, HEX);  // Mostrar código en hexadecimal
    irrecv.resume();  // Preparar para la próxima señal
  }
  buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    // Enviar código IR (protocolo NEC, valor hexadecimal)
    irsend.sendNEC(0x1FE48B7, 32);  // Código NEC de 32 bits

    // turn LED on:
    digitalWrite(ledPin, HIGH);
  } else {
    // turn LED off:
    digitalWrite(ledPin, LOW);
  }
}





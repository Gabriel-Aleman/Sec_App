#include <DHT11.h>
//Pines:
/*---------------------------------------------------------------------------*/
//Analogícos
const int pin_sonido  = A0;
const int pin_fuego   = A1;
const int pin_luz     = A5;

//Digitales
const int pin_prox     = 3;
const int pin_echo     = 12;
const int pin_trig     = 13;
/*---------------------------------------------------------------------------*/


//Constantes
/*---------------------------------------------------------------------------*/
int sonido = 0, fuego = 0, luz = 0;       
float duration_us, distance_cm, factor = 0.017;
int temperature = 0;
int humidity = 0;
bool prox = false;

DHT11 dht11(2);
/*---------------------------------------------------------------------------*/

void setup() {
  Serial.begin(115200);  // Inicia la comunicación serial a 115200 baudios
  pinMode(pin_prox, INPUT);
  pinMode(pin_trig, OUTPUT); // set arduino pin to output mode
  pinMode(pin_echo, INPUT);  // set arduino pin to input mode

}

void loop() {

  //Medir distancia por US
/*---------------------------------------------------------------------------*/
  digitalWrite(pin_trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(pin_trig, LOW);
  
  duration_us = pulseIn(pin_echo, HIGH);
  distance_cm = factor * duration_us;
/*---------------------------------------------------------------------------*/

  //Medir temperatura y humedad
/*---------------------------------------------------------------------------*/
  int result = dht11.readTemperatureHumidity(temperature, humidity);
/*---------------------------------------------------------------------------*/
  sonido  = analogRead(pin_sonido); 
  fuego   = analogRead(pin_fuego);  
  luz     = analogRead(pin_luz);  
  prox    = digitalRead(pin_prox);

  Serial.print("Proximidad: ");
  Serial.print(prox);
  
  Serial.print(",Distancia: ");
  Serial.print(distance_cm);

  Serial.print(",Sonido: ");
  Serial.print(sonido);

  Serial.print(",Humedad: ");
  Serial.print(humidity);

  Serial.print(",Temperatura: ");
  Serial.print(temperature);
  
  Serial.print(",fuego: ");
  Serial.print(fuego);
    
  Serial.print(",luz: ");
  Serial.println(luz);
  
  delay(1200);  // Espera medio segundo antes de la siguiente lectura
}
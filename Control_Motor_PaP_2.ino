#define VELOCIDAD 1700
//Aquí se genera el prototipo de las funciones
void InicialPIN();
String recibirDato();
void moverMotor(String dato);
//Variables para el motor del eje X
int direccion1 = 2;
int steps1 = 3;
int reset1 = 9;
int pasos1 = 3500;
//Variables para el motor del eje y
int direccion2 = 4;
int steps2 = 5;
int reset2 = 10;
int pasos2 = 3500;


void setup() {                
  InicialPIN();
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
   String dato=recibirDato();
   moverMotor(dato);
   Serial.print(dato);
}






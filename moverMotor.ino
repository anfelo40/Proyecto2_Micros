void moverMotor(String dato){
    digitalWrite(reset1, LOW);    //Mientras reset este en LOW el motor permanecerá apagado y no sufrirá. El chip apagará todos los puertos y no leerá comandos.
    digitalWrite(reset2, LOW); 
    //delay(100);
    //digitalWrite(reset, HIGH);   

if(dato=="A1 C3"){
            //Movimiento MOTOR eje X
            digitalWrite(reset1,HIGH);            //Cuando reset se encuentre en HIGH el motor arrancará y leerá los comandos enviados.
            digitalWrite(direccion1,HIGH);        //Cuando direccion está en HIGH se moverá hacia la ___________.
            for (int i = 0; i<pasos1; i++)        //Equivale al numero de vueltas (200 es 360º grados) o micropasos
              {
                digitalWrite(steps1, HIGH);       // This LOW to HIGH change is what creates the
                digitalWrite(steps1, LOW);        //  DRIVER A4988 de avanzar una vez por cada pulso de energia.  
                delayMicroseconds(VELOCIDAD);     // Regula la velocidad, cuanto mas bajo mas velocidad.
            
              } 
              //Movimiento MOTOR eje Y
            digitalWrite(reset2,HIGH);
            digitalWrite(direccion2,HIGH);
            for (int i = 0; i<pasos2; i++)
              {
                digitalWrite(steps2, HIGH);
                digitalWrite(steps2, LOW);
                delayMicroseconds(VELOCIDAD);
            
              }
}















//    digitalWrite(reset, LOW);    //Mientras reset este en LOW el motor permanecerá apagado y no sufrirá. El chip apagará todos los puertos y no leerá comandos.
//    delay(100);
//    digitalWrite(reset, HIGH);   //Cuando reset se encuentre en HIGH el motor arrancará y leerá los comandos enviados.
//    digitalWrite(direccion, HIGH);
//    
//  for (int i = 0; i<pasos; i++)       //Equivale al numero de vueltas (200 es 360º grados) o micropasos
//  {
//    digitalWrite(steps, HIGH);  // This LOW to HIGH change is what creates the
//    digitalWrite(steps, LOW); // al A4988 de avanzar una vez por cada pulso de energia.  
//    delayMicroseconds(VELOCIDAD);     // Regula la velocidad, cuanto mas bajo mas velocidad.
//
//  } 
//  
//  digitalWrite(reset, LOW);   //Mientras reset este en LOW el motor permanecerá apagado y no sufrirá. El chip apagará todos los puertos y no leerá comandos.
//  delay(100);
//  digitalWrite(reset, HIGH);   //Cuando reset se encuentre en HIGH el motor arrancará y leerá los comandos enviados.
//  digitalWrite(direccion, LOW);
//
//  for (int i = 0; i<pasos; i++)       //Equivale al numero de vueltas (200 es 360º grados) o micropasos
//  {
//      
//    digitalWrite(steps, HIGH);   // LOW to HIGH hace que el motor avance ya que da la orden
//    digitalWrite(steps, LOW);    // al A4988 de avanzar una vez por cada pulso de energia.
//    delayMicroseconds(VELOCIDAD);         // Regula la velocidad, cuanto mas bajo mas velocidad.
//  }


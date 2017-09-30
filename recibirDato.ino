String recibirDato(){
    String dato;
        //Cada que haya un dato en el serial, se guarda el dato en una cadena.
        if (Serial.available() > 0) {
            dato = Serial.readStringUntil('\n');      
            return dato;
        }
}

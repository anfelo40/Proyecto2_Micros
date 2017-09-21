// -- Importar Serial
import processing.serial.*;
// -- Inicializar el Puerto
Serial myPort;
// -- Setup
void setup(){
  
  //tamaño de ventana
  size(600,500);
  //println---Serial.list()
  println(Serial.list());
  //Configurar Puerto
  myPort = new Serial(this,Serial.list()[0],9600);
  //Espera para un número de bits
  myPort.buffer(1);
}

//  -- Draw
void draw(){
  
  //Boton verde
  fill(250,10,12);
  rect(200,200,100,200);
  //Boton rojo
  fill(90,220,73);
  rect(300,200,100,200);
}

//--mousePressed
void mousePressed(){
  
  //Coordenadas boton verde
  if(mouseX > 200 && mouseX < 300){
    if(mouseY > 200 && mouseY < 400){
      myPort.write(48);
    }
  }
  
  //Coordenadas boton rojo
  if(mouseX > 300 && mouseX < 400){
    if(mouseY > 200 && mouseY < 400){
      myPort.write(49);
    }
  }
}
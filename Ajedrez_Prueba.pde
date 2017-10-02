// -- Importar Serial
//import processing.serial.*;
// -- Inicializar el Puerto
//Serial myPort;
//se declara la variable de la imagen
PImage bREY,bREINA,bALFIL,bTORRE,bPEON,bCABALLO;
PImage nREY,nREINA,nALFIL,nTORRE,nPEON,nCABALLO;
PImage[] boardN;
PImage[] boardB;
float positX [];
float positY [][];
int pint,p;
//Se defnen variables globales para parametrizar
boolean pressed = false,INICIAL=true,FINAL=false;
float x, y;
int spaceX=250,spaceY=75, c_base=75,c_altura=75;


void setup(){
  
 // println(Serial.list());
  //Configurar Puerto
  //myPort = new Serial(this,Serial.list()[0],9600);
  size(1100, 700);//tamaño de la ventana
  //noStroke();
  // Se cargan las imágenes en cada una de las variables correspondientes
  bREY=loadImage("REY.PNG");
  nREY=loadImage("REY1.PNG");
  bREINA=loadImage("REINA.PNG");
  nREINA=loadImage("REINA1.PNG");
  bALFIL=loadImage("ALFIL.PNG");
  nALFIL=loadImage("ALFIL1.PNG");
  bTORRE=loadImage("TORRE.PNG");
  nTORRE=loadImage("TORRE1.PNG");
  bPEON=loadImage("PEON.PNG");
  nPEON=loadImage("PEON1.PNG");
  bCABALLO=loadImage("CABALLO.PNG");
  nCABALLO=loadImage("CABALLO1.PNG");
  
  bREY.resize(c_base-15,c_altura-15);
  nREY.resize(c_base-15,c_altura-15);
  bREINA.resize(c_base-15,c_altura-15);
  nREINA.resize(c_base-15,c_altura-15);
  bALFIL.resize(c_base-15,c_altura-15);
  nALFIL.resize(c_base-15,c_altura-15);
  bTORRE.resize(c_base-15,c_altura-15);
  nTORRE.resize(c_base-15,c_altura-15);
  bPEON.resize(c_base-15,c_altura-15);
  nPEON.resize(c_base-15,c_altura-15);
  bCABALLO.resize(c_base-15,c_altura-15);
  nCABALLO.resize(c_base-15,c_altura-15);
  
  posicionInicial();
  
  
  //posicion x de la ficha
  //posicion y de la ficha
  textSize(40);
}

void draw() {
   background(0);
   mostrartablero();
   ponerfichas();
   //println("PosX="+mouseX+"PosY="+mouseY);
    for(int s=0;s<8;s++){
      fill(255);
     text(char('A'+s), 277.5+s*c_base, 55);
 }
   for(int s=0;s<8;s++){
     text(1+s, 277.5-c_base, 55+c_altura*(1+s));
   fill(255);
 }
}


void mousePressed()
{
  if(!pressed){ // Si no está presionado
  for(int i=0;i<8;i++){
  //  if(mouseY <= 220 && mouseY >= 535){
    if( mouseX > positX[0] && mouseX < positX[0]+60 && 
        mouseY > positY[0][0] && mouseY < positY[0][0]+60){
      pressed = true;
      p=i;
      //break;
        }
  
  }
  }
  println("PosX="+mouseX+"PosY="+mouseY);
  
 // myPort.write('1');
}

void mouseDragged()
{
  if(pressed){
    // el 287.5 y 112.5 es para que se mueva la ficha justo con el mouse
     positX[0]= mouseX-60;
     positY[0][0]= mouseY-60;
  } 
}

void mouseReleased()
{
  if(pressed){
    x = int((mouseX-spaceX)/c_base)*c_altura; //para ubicar bien la ficha
    y = int((mouseY-spaceY)/c_base)*c_altura;
    pressed = false;
  }
  println("PosX="+mouseX+"PosY="+mouseY);
 // myPort.write('0');
}
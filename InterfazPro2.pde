PImage peonbA,peonbB,peonbC,peonbD,peonbE,peonbF,peonbG,peonbH;
PImage torrebA,torrebB,horseA,horseB,alfilA,alfilB,rey,reina;
PImage peonnA,peonnB,peonnC,peonnD,peonnE,peonnF,peonnG,peonnH;
PImage torrenA,torrenB,horsenA,horsenB,alfilnA,alfilnB,reyn,reinan;

boolean pressed = false;
float x, y;

void tablero (int n){
for(int i=0;i<n;i++)
{
  for(int j=0;j<n;j++)
  {
    if( (i+j)% 2==0)
    {
      fill(108,72,17);
    }else
    {
      fill(211,192,128);
    }
    rect (i*75+250,j*75+75,75,75);
   
  }
   
}

}

void setup(){
  
  size(1100, 700);
  

  //rectMode(CENTER);
  torrebA= loadImage("torre.PNG");
  torrebA.resize(60,60);
  
  torrebB= loadImage("torre.PNG");
  torrebB.resize(60,60);
  
  horseA= loadImage("caballo.PNG");
  horseA.resize(60,60);
  
  horseB= loadImage("caballo1.PNG");
  horseB.resize(60,60);
  
  alfilA= loadImage("alfil.PNG");
  alfilA.resize(60,60);
  
  alfilB= loadImage("alfil1.PNG");
  alfilB.resize(60,60);
  
  rey= loadImage("rey.PNG");
  rey.resize(60,60);
  
  reina= loadImage("reina.PNG");
  reina.resize(60,60);
  
  peonbA= loadImage("peon.PNG");
  peonbA.resize(60,60);
  
  peonbB= loadImage("peon1.PNG");
  peonbB.resize(60,60);
  
  peonbC= loadImage("peon2.PNG");
  peonbC.resize(60,60);
  
  peonbD= loadImage("peon3.PNG");
  peonbD.resize(60,60);
  
  peonbE= loadImage("peon4.PNG");
  peonbE.resize(60,60);
  
  peonbF= loadImage("peon5.PNG");
  peonbF.resize(60,60);
  
  peonbG= loadImage("peon6.PNG");
  peonbG.resize(60,60);
  
  peonbH= loadImage("peon7.PNG");
  peonbH.resize(60,60);
  
  //Fichas de color negro
  
  torrenA= loadImage("torren.PNG");
  torrenA.resize(60,60);
  
  torrenB= loadImage("torren.PNG");
  torrenB.resize(60,60);
  
  horsenA= loadImage("caballon.PNG");
  horsenA.resize(60,60);
  
  horsenB= loadImage("caballon.PNG");
  horsenB.resize(60,60);
  
  alfilnA= loadImage("alfiln.PNG");
  alfilnA.resize(60,60);
  
  alfilnB= loadImage("alfiln.PNG");
  alfilnB.resize(60,60);
  
  reyn= loadImage("reyn.PNG");
  reyn.resize(60,60);
  
  reinan= loadImage("reinan.PNG");
  reinan.resize(60,60);
  
  peonnA= loadImage("peonn.PNG");
  peonnA.resize(60,60);
  
  peonnB= loadImage("peonn.PNG");
  peonnB.resize(60,60);
  
  peonnC= loadImage("peonn.PNG");
  peonnC.resize(60,60);
  
  peonnD= loadImage("peonn.PNG");
  peonnD.resize(60,60);
  
  peonnE= loadImage("peonn.PNG");
  peonnE.resize(60,60);
  
  peonnF= loadImage("peonn.PNG");
  peonnF.resize(60,60);
  
  peonnG= loadImage("peonn.PNG");
  peonnG.resize(60,60);
  
  peonnH= loadImage("peonn.PNG");
  peonnH.resize(60,60);
  
  x = 0;
  y = 75;
  textSize(40);
}

void draw() {
   background(23,34,227);
   tablero(8);
   image(torrebA,x+260,y+10);
   image(torrebB,x+785,y+10);
   image(horseA,x+335, y+10);
   image(horseB,x+710, y+10);
   image(alfilA,x+410, y+10);
   image(alfilB,x+635, y+10);
   image(rey,x+485, y+10);
   image(reina,x+560, y+10);
   image(peonbA,x+260, y+85);
   image(peonbB,x+335, y+85);
   image(peonbC,x+410, y+85);
   image(peonbD,x+485, y+85);
   image(peonbE,x+560, y+85);
   image(peonbF,x+635, y+85);
   image(peonbG,x+710, y+85);
   image(peonbH,x+785, y+85);
   //fichas negras
   image(torrenA,x+260,y+535);
   image(torrenB,x+785,y+535);
   image(horsenA,x+335, y+535);
   image(horsenB,x+710, y+535);
   image(alfilnA,x+410, y+535);
   image(alfilnB,x+635, y+535);
   image(reyn,x+485, y+535);
   image(reinan,x+560, y+535);
   image(peonnA,x+260, y+460);
   image(peonnB,x+335, y+460);
   image(peonnC,x+410, y+460);
   image(peonnD,x+485, y+460);
   image(peonnE,x+560, y+460);
   image(peonnF,x+635, y+460);
   image(peonnG,x+710, y+460);
   image(peonnH,x+785, y+460);
   //println("PosX="+mouseX+"PosY="+mouseY);
   for (int k=0;k<8;k++){
   text(char('A'+k),275.5+75*k, 55);
   }
   
   for (int k=0;k<8;k++){
   text(int(1+k),200,130+75*k);
   }
}

void mousePressed()
{
  if(!pressed){  // Sino está presionado
    if( mouseX > x+250 && mouseX < (x+325) && 
        mouseY > y+75 && mouseY < (y+150))
      pressed = true;
      
      //OBTENER LA POSICIÓN INICIAL
      //serial.print(INICIAL)
  }  
}

void mouseDragged()
{
  if(pressed){
    x = mouseX-287.5;
    y = mouseY-112.5;
  }
}

void mouseReleased()
{
  if(pressed){
    x = int((mouseX-250)/75)*75;
    y = int((mouseY-75)/75)*75;
    pressed = false;
    //OBTENER LA POSICIÓN FINAL 
    //serial.println(" FINAL");
  }
}
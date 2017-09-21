PImage peonb;

boolean pressed = false;
float x, y;

void tablero (int n){
for(int i=0;i<n;i++)
{
  for(int j=0;j<n;j++)
  {
    if( (i+j)% 2==0)
    {
      fill(0);
    }else
    {
      fill(255);
    }
    rect (i*75+250,j*75+75,75,75);
   
  }
   
}

}



void setup(){
  
  size(1100, 700);

  //rectMode(CENTER);
  
  peonb= loadImage("peon-blanco.png");
  peonb.resize(75,75);
  
  x = 0;
  y = 75;
  textSize(40);
}

void draw() {
   background(23,34,227);
   tablero(8);
   image(peonb,x+250, y+75);
   //println("PosX="+mouseX+"PosY="+mouseY);
   text(char('A'+2), 427.5, 55);
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
void mostrartablero() {
  for (int i = 0; i<8; i++)
    for (int j = 0; j<8; j++) { 
      if ((i+j)%2 == 0) fill(211,192,128);
      else fill(108,72,17);
      rect(i*75+spaceX, j*75+spaceY, c_base,c_altura);//Se centra el tablero
      //if (board[j][i] != null) image(board[j][i], i*75+spaceX+10, j*75+spaceY+10);
    }//se ubican las fichas

}

void posicionInicial() {
  boardN = new PImage[16];
  // se ubican las fichas
  boardN[0] = nTORRE;
  boardN[1] = nCABALLO;
  boardN[2] = nALFIL;
  boardN[3] = nREINA;
  boardN[4] = nREY;
  boardN[5] = nALFIL;
  boardN[6] = nCABALLO;
  boardN[7] = nTORRE;
  boardN[8] = nPEON;
  boardN[9] = nPEON;
  boardN[10] = nPEON; 
  boardN[11] = nPEON;
  boardN[12] = nPEON;
  boardN[13] = nPEON;
  boardN[14] = nPEON;
  boardN[15] = nPEON;

boardB= new PImage[16];
  boardB[0] = bTORRE;
  boardB[1] = bCABALLO;
  boardB[2] = bALFIL;
  boardB[3] = bREINA;
  boardB[4] = bREY;
  boardB[5] = bALFIL;
  boardB[6] = bCABALLO;
  boardB[7] = bTORRE;
  boardB[8] = bPEON;
  boardB[9] = bPEON;
  boardB[10] = bPEON;
  boardB[11] = bPEON;
  boardB[12] = bPEON;
  boardB[13] = bPEON;
  boardB[14] = bPEON;
  boardB[15] = bPEON; 
  
  positX= new float[8];
  //Se ubican las posiciones en x
  for(int i=0;i<8;i++)
  positX[i]=(i*75)+spaceX+10;
 
   positY= new float[8][8];
  //Se ubican las posiciones en y
  for(int j=0;j<8;j++){
  positY[0][j]=+spaceY+10;
  positY[1][j]=75+spaceY+10;
  positY[2][j]=(6*75)+spaceY+10;
  positY[3][j]=(7*75)+spaceY+10;
  positY[4][j]=0;
  positY[5][j]=0;
  positY[6][j]=0;
  positY[7][j]=0;
  }
  }

void ponerfichas(){
 image(boardN[0],positX[0],positY[0][0]);
   image(boardN[1],positX[1],positY[0][0]);
   image(boardN[2],positX[2],positY[0][0]);
   image(boardN[3],positX[3],positY[0][0]);
   image(boardN[4],positX[4],positY[0][0]);
   image(boardN[5],positX[5],positY[0][0]);
   image(boardN[6],positX[6],positY[0][0]);
   image(boardN[7],positX[7],positY[0][0]);
   image(boardN[8],positX[0],positY[1][0]);
   image(boardN[9],positX[1],positY[1][0]);
   image(boardN[10],positX[2],positY[1][0]);
   image(boardN[11],positX[3],positY[1][0]);
   image(boardN[12],positX[4],positY[1][0]);
   image(boardN[13],positX[5],positY[1][0]);
   image(boardN[14],positX[6],positY[1][0]);
   image(boardN[15],positX[7],positY[1][0]);
   
   image(boardB[0],positX[0],positY[3][0]);
   image(boardB[1],positX[1],positY[3][0]);
   image(boardB[2],positX[2],positY[3][0]);
   image(boardB[3],positX[3],positY[3][0]);
   image(boardB[4],positX[4],positY[3][0]);
   image(boardB[5],positX[5],positY[3][0]);
   image(boardB[6],positX[6],positY[3][0]);
   image(boardB[7],positX[7],positY[3][0]);
   image(boardB[8],positX[0],positY[2][0]);
   image(boardB[9],positX[1],positY[2][0]);
   image(boardB[10],positX[2],positY[2][0]);
   image(boardB[11],positX[3],positY[2][0]);
   image(boardB[12],positX[4],positY[2][0]);
   image(boardB[13],positX[5],positY[2][0]);
   image(boardB[14],positX[6],positY[2][0]);
   image(boardB[15],positX[7],positY[2][0]);
  
}
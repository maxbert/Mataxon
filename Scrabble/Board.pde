class Board{
   BoardSpace[][] Board= new BoardSpace[15][15];
   Board(){
     for (int i = 0; i < 15; i++){
       for (int j = 0; j < 15; j++){
         Board[i][j] = new BlankSpace();}}
         
      Board[7][7] = new StarSpace();
      
      Board[8][8] = new DoubleLetter();
      Board[6][8] = new DoubleLetter();
      Board[6][6] = new DoubleLetter();
      Board[8][6] = new DoubleLetter();
      
      Board[5][9] = new TripleLetter();
      Board[5][5] = new TripleLetter();
      Board[5][9] = new TripleLetter();
      Board[9][5] = new TripleLetter();
      
      Board[4][4] = new DoubleWord();
      Board[10][10] = new DoubleWord();
      Board[4][10] = new DoubleWord();
      Board[10][4] = new DoubleWord();
      
      Board[11][11] = new DoubleWord();
      Board[3][11] = new DoubleWord();
      Board[11][3] = new DoubleWord();
      Board[3][3] = new DoubleWord();
      
      Board[12][12] = new DoubleWord();
      Board[12][2] = new DoubleWord();
      Board[2][12] = new DoubleWord();
      Board[2][2] = new DoubleWord();
      
      Board[1][13] = new DoubleWord();
      Board[13][1] = new DoubleWord();
      Board[13][13] = new DoubleWord();
      Board[1][1] = new DoubleWord();
      
      Board[0][14] = new TripleWord();
      Board[14][0] = new TripleWord();
      Board[14][14] = new TripleWord();
      Board[0][0] = new TripleWord(); 
      
      Board[3][7] = new DoubleLetter();
      Board[7][3] = new DoubleLetter();
      
      Board[7][11] = new DoubleLetter();
      Board[7][11] = new DoubleLetter();
      
      Board[7][14] = new TripleWord();
      Board[14][7] = new TripleWord();
      Board[0][7] = new TripleWord();
      Board[7][0] = new TripleWord();
      
      Board[2][6] = new DoubleLetter();
      Board[6][2] = new DoubleLetter();
      Board[8][2] = new DoubleLetter();
      Board[2][8] = new DoubleLetter();
      
      Board[12][6] = new DoubleLetter();
      Board[12][8] = new DoubleLetter();
      Board[8][12] = new DoubleLetter();
      Board[6][12] = new DoubleLetter();
      
      Board[1][5] = new TripleLetter();
      Board[1][9] = new TripleLetter();
      Board[5][1] = new TripleLetter();
      Board[9][1] = new TripleLetter();
      
      Board[13][5] = new TripleLetter();
      Board[5][13] = new TripleLetter();
      Board[9][13] = new TripleLetter();
      Board[13][9] = new TripleLetter();
      
      Board[3][0] = new DoubleLetter();
      Board[0][3] = new DoubleLetter();
      Board[0][11] = new DoubleLetter();
      Board[11][0] = new DoubleLetter();
      
      Board[3][14] = new DoubleLetter();
      Board[11][14] = new DoubleLetter();
      Board[11][7] = new DoubleLetter();
      Board[14][3] = new DoubleLetter();
      Board[14][11] = new DoubleLetter();
      Board[9][9] = new TripleLetter();
   }
   
   public BoardSpace getTile(int x, int y){
     return Board[x][y];}
     
   //returns what was previous present
   public BoardSpace setTile(BoardSpace t, int x, int y){
     BoardSpace temp = Board[x][y];
     Board[x][y] = t;
     return temp;}
     
   public void swap(int x1, int y1, int x2, int y2){
     BoardSpace temp = setTile(getTile(x1,y1),x2,y2);
     setTile(temp, x1,y1);}
}
     
    
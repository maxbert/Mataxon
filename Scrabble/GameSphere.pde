import java.util.*;
 
  class GameSphere{
 
  //turn is either 1 for 1st player or 2 for 2nd player
  int turn = 1;

  Board _board = new Board();
  Bag _bag = new Bag();
  Player _player1 = new Player(_bag);
  Player _player2 = new Player(_bag);
  
  int getTurn(){
      return turn;}
    void setTurn(int x){
      turn = x;
    }
    
      Tile p1GetTile(int i){
       return _player1.getTile(i)
      ;}
        Tile p2GetTile(int i){
       return _player2.getTile(i)
      ;}
      
      void p1Draw(){
       
        _player1.draw(_bag);}
        
       void p2Draw(){
           _player2.draw(_bag);}
           
      
     BoardSpace getTile(int x, int y){
      return _board.getTile(x,y);}
      
     String boardGetLet(int x, int y){
       return getTile(x,y).getLet();}
       
     String p1GetLet(int i){
       return _player1.getTile(i).getLet();}
       
     String p2GetLet(int i){
       return _player2.getTile(i).getLet();}
       
  int[] spot(float x, float y){
   int[] spots = new int[2] ;
   int xcor = (int)(x);
   int ycor = (int)(y);
   spots[0] = xcor/40;
   spots[1] = ycor/40;
   return spots;
  }
  public boolean  checkWord(String x){
      for(int i =0; i< dict.length; i++){
        if(dict[i].equals(x)){
          return true;
        }
      }
      return false;
  }
  
  int handSpot(float x, float y){
   int xcor = (int)(x - 130);
   int ycor = (int)(y - 640);
   if (ycor <= 40 && ycor >= 0){
     return xcor/50;}
   return -1;
   }
  
   void endTurn(){
   //  checkWord();
   //  calcScore();
     
     if(game.getTurn() == 1){
       game.setTurn(2);
     }
     else{
       game.setTurn(1);
     }
     
   }
   
   
   void exchange(){
     if (turn == 1){
       int i =0;
       while(i < 7){
       Tile temp = _player1.hand.give(0);
       _bag.accept(temp);
     i++;}}
     else{
       int i = 0;
       while(i < 7){
       Tile temp = _player1.hand.give(0);
       _bag.accept(temp);
     i++;}}
   }
   
   void undo(int[][] a){
     if (turn == 1){
       for (int[] i : a){
         _player1.hand.take((Tile)getTile(i[0],i[1]));
         _board.setTile(new BlankSpace(), i[0],i[1]);}
       } 
     
     else{
       for (int[] i : a){
         _player2.hand.take((Tile)getTile(i[0],i[1]));
         _board.setTile(new BlankSpace(), i[0],i[1]);}      
     }
   }
     
       
     
  
  
  }//end class
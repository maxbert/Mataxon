import java.util.*;
 
  class GameSphere{
 
  //turn is either 1 for 1st player or 2 for 2nd player
  int turn = 1;
  ArrayList<Integer>  playedX = new ArrayList<Integer>();
  ArrayList<Integer>  playedY = new ArrayList<Integer>();
  Board _board = new Board();
  Bag _bag = new Bag();
  Player _player1 = new Player(_bag);
  Player _player2 = new Player(_bag);
  
  //TURN METHODS
  int getTurn(){
      return turn;}
  void setTurn(int x){
      turn = x;
    }
  
  //PLAYER METHODS
    int p1GetHandSize(){
      return _player1.hand.size();
    }
        int p2GetHandSize(){
      return _player2.hand.size();
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
           
       
           
     //BOARD 
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
       playedX = new ArrayList<Integer>();
       playedY = new ArrayList<Integer>();
       _player1.draw(_bag);
       
     }
     else{
       game.setTurn(1);
        playedX = new ArrayList<Integer>();
       playedY = new ArrayList<Integer>();
       _player2.draw(_bag);
     }
     
   }
   
   int calcScore(){
     int retscore;
     ArrayList<Integer> x = new ArrayList<Integer>();
     ArrayList<Integer> y = new ArrayList<Integer>();
     
     int temp = playedX.size();
     for (int i = 0; i < temp; i++){
        if(!y.contains(playedY.get(i)){
        if(getTile(playedX.get(i) -1, playedY.get(i)).getClass() == Tile.class){
          int j = 1;
          while(getTile(playedX.get(i) - j, playedY.get(i)).getClass() == Tile.class && playedX.get(i) - j >= 0){
            retscore += getTile(playedX.get(i) -j, playedY.get(i)).getVal();
            j++;
          }
        }
        if(getTile(playedX.get(i) + 1, playedY.get(i)).getClass() == Tile.class){
          int j = 1;
          while(getTile(playedX.get(i) + j, playedY.get(i)).getClass() == Tile.class && playedX.get(i) + j < 15){
            retscore += getTile(playedX.get(i) + j, playedY.get(i)).getVal();
            j++;
          }
        }
      }
        if(!x.contains(playedX.get(i))
        if(getTile(x.get(i), playedY.get(i) -1 ).getClass() == Tile.class){
                 int j = 1;
          while(getTile(playedX.get(i), playedY.get(i) -j).getClass() == Tile.class && playedY.get(i) -j >= 0){
            retscore += getTile(playedX.get(i), playedY.get(i)-j).getVal();
            j++;
          }
        }
          if(getTile(playedX.get(i), playedY.get(i)+1).getClass() == Tile.class){
          int j = 1;
          while(getTile(playedX.get(i), playedY.get(i)+j).getClass() == Tile.class && playedY.get(i) + j < 15){
            retscore += getTile(playedX.get(i), playedY.get(i)+j).getVal();
            j++;
          }
          }
       x.add(playedX.get(i));
       y.add(playedY.get(i));
       
   }
   return retscore;
 }
   
   
   void exchange(){
     
     if (turn == 1){
       if(_player1.hand.size() < 7){
         return;
       }
       int i =0;
       while(i < 7){
       Tile temp = _player1.hand.give(0);
       _bag.accept(temp);
     i++;}
     _player1.draw(_bag);}
     else{
          if(_player2.hand.size() < 7){
         return;
       }
       int i = 0;
       while(i < 7){
       Tile temp = _player2.hand.give(0);
       _bag.accept(temp);
     i++;}
   _player2.draw(_bag);}
   }
   
   void undo(){
     
     undo(playedX,playedY);
   }
   
     void undo(ArrayList<Integer> x, ArrayList<Integer> y){
       int temp = x.size();
       if (turn == 1){
         for(int i =0; i < temp; i++){
           _player1.hand.take((Tile)getTile(x.get(0), y.get(0)));
           _board.setTile(new BlankSpace(), x.get(0),y.get(0));
         x.remove(0); y.remove(0);}
         } 
       
       else{
         for (int i =0; i < temp; i++){
   _player2.hand.take((Tile)getTile(x.get(0), y.get(0)));
           _board.setTile(new BlankSpace(), x.get(0),y.get(0));
         x.remove(0); y.remove(0);}      
       }
     }
       
         
     
  
  
  }//end class
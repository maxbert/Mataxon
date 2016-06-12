import java.util.*;
 import static javax.swing.JOptionPane.*;
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
      int nextTurn =1;
      Checker c = new Checker();
      if (c.wordDir(playedX,playedY)){
        undo();
        return;
      }
     if(game.getTurn() == 1){
       game.setTurn(2);
       _player1.altScore(calcScore());
       playedX = new ArrayList<Integer>();
       playedY = new ArrayList<Integer>();
       _player1.draw(_bag);
       nextTurn = 2;
       
     }
     else{
       _player2.altScore(calcScore());
       game.setTurn(1);
        playedX = new ArrayList<Integer>();
       playedY = new ArrayList<Integer>();
       _player2.draw(_bag);
       nextTurn =1;
     }
     showMessageDialog(null,"It's player " + nextTurn + "'s turn now!");
   }
   
   int calcScore(){
     int ret = 0;
     ArrayList<Integer> Checkedx = new ArrayList<Integer>();
     ArrayList<Integer> Checkedy = new ArrayList<Integer>();
     
     for(int i =0; i < playedX.size(); i++){
       int xcor = playedX.get(i); int ycor = playedY.get(i);
       
       if(!Checkedy.contains(playedY.get(i))){
       if(xcor != 0 && ycor != 0 && getTile(xcor -1,ycor).getLet().length() == 1){
         int j =1;
         ret += getTile(playedX.get(0),playedY.get(0)).getVal();
         while(getTile(xcor -j, ycor).getLet().length() == 1){
           ret += getTile(xcor -j,ycor).getVal();
           j++;
           Checkedx.add(xcor -j);
           Checkedy.add(ycor);
         }
       }
              if(xcor != 14 && ycor != 14 && getTile(xcor +1,ycor).getLet().length() == 1){
         int j =1;
         ret += getTile(playedX.get(0),playedY.get(0)).getVal();
         while(getTile(xcor +j, ycor).getLet().length() == 1){
           ret += getTile(xcor +j,ycor).getVal();
           j++;
           Checkedx.add(xcor +j);
           Checkedy.add(ycor);
         }
       }}
       if(!Checkedx.contains(playedX.get(i))){
              if(xcor != 0 && ycor != 0 && getTile(xcor,ycor-1).getLet().length() == 1){
         int j =1;
         ret += getTile(playedX.get(0),playedY.get(0)).getVal();
         while(getTile(xcor, ycor-j).getLet().length() == 1){
           ret += getTile(xcor,ycor-j).getVal();
           j++;
           Checkedx.add(xcor);
           Checkedy.add(ycor-j);
         }
       }
              if(xcor != 14 && ycor != 14 && getTile(xcor,ycor +1).getLet().length() == 1){
         int j =1;
         ret += getTile(playedX.get(0),playedY.get(0)).getVal();
         while(getTile(xcor, ycor+j).getLet().length() == 1){
           ret += getTile(xcor,ycor+j).getVal();
           j++;
           Checkedx.add(xcor);
           Checkedy.add(ycor+j);
         }
       }
     }
     Checkedx.add(playedX.get(i));
     Checkedy.add(playedY.get(i));
     }
     return ret;
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

      int nextTurn =1;
     if(game.getTurn() == 1){
       game.setTurn(2);
       nextTurn = 2;
       
     }
     else{
       game.setTurn(1);
       nextTurn =1;
     }
     showMessageDialog(null,"It's player " + nextTurn + "'s turn now!");
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
class GameSphere{
  
  //turn is either 1 for 1st player or 2 for 2nd player
  int turn = 1;
  
  Board _board = new Board();
  Bag _bag = new Bag();
  Player _player1 = new Player(_bag);
  Player _player2 = new Player(_bag);
  
  int getTurn(){
    return turn;}
  
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


}

  
  
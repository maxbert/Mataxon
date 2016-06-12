class GameSphere{
  
  //turn is either 1 for 1st player or 2 for 2nd player
  int turn = 1;
  
  Board _board = new Board();
  Bag _bag = new Bag();
  Player _player1 = new Player(_bag);
  Player _player2 = new Player(_bag);
  
  int getTurn(){
    return turn;}
  
   Tile boardGetTile(int x, int y){
    return _board.get(x,y);}
    
   String boardGetLet(int x, int y){
     return getTile(x,y).getLet();}
     
   String p1GetLet(int i){
     return _player1.getTile(i);}
     
   String p2GetLet(int i){
     return _player2.getTile(i);}
     
     
}

  
  
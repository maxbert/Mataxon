/* @pjs preload = "A.jpg"; */  
import java.util.*;
String[] stuff = {""}; 
String[] dict = {""};
GameSphere game = new GameSphere();

void setup(){
  size(800,800);
  frameRate(160);
  stuff =loadStrings("words.txt");
  dict = split(stuff[0],',');
  image(loadImage("Exchange.jpg"),700.0,125.0,100,50);
  image(loadImage("EndTurn.jpg"),700.0,375.0,100,150);
}
void draw(){
  for(int i = 0; i < 15; i ++){
    for(int j = 0; j < 15; j++){
      image(loadImage(game.boardGetLet(i,j) + ".jpg"),(40 * i ), (40 * j), 40.0,40.0);
  }}
  for (int i = 0; i < 7; i ++){
    if (game.getTurn() == 1){
      image(loadImage(game.p1GetLet(i) + ".jpg"), (130 + (i * 50)) , (640), 40.0, 40.0);}
    else{
    image(loadImage(game.p2GetLet(i) + ".jpg"), (130 + (i * 50)) , (640), 40.0, 40.0);}
  }
  if(mousePressed && game.spot(mouseX,mouseY)[0] < 15 && game.spot(mouseX,mouseY)[1] < 15) {
    int[] coords = game.spot(mouseX, mouseY);
      println("" + coords[0] + coords[1]);
  }
  if(mousePressed && (mouseX > 650 && mouseX < 750) && (mouseY > 100 && mouseY < 150)){
    //exchange call made
    
  }
  if(mousePressed && (mouseX > 650 && mouseX < 750) && (mouseY > 250 && mouseY < 300)){
    //end turn call made
    
  }
  
    
      
}//end draw



String copy(int[] first, int[] last, BoardSpace[][] board){  
  String retStr = "";
  int xcor1 = first[1];
  int ycor1 = first[2];
  int xcor2 = last[1];
  int ycor2 = last[2];
  if(xcor1 == xcor2){// row
  Tile[] tiles = new Tile[ycor2 =ycor1];
    for(int a = ycor1; a < ycor2 + 1; a++){
      tiles[a] = (Tile)( board[xcor1][ycor1 + a]);
    }
    for(int b = 0; b < tiles.length; b++){
      retStr += (tiles[b].getLet()); 
    }  
  }//end if
  else{    //column
    Tile[] tiles = new Tile[xcor2 = xcor1];
    for(int a = ycor1; a < ycor2 + 1; a++){
      tiles[a] = (Tile)( board[xcor1 + a][ycor1]);
    }
    for(int b = 0; b < tiles.length; b++){
      retStr += (tiles[b].getLet()); 
    }   
  }//end else
  return retStr;
}
public boolean  checkWord(String x){
    for(int i =0; i< dict.length; i++){
      if(dict[i].equals(x)){
        return true;
      }
    }
    return false;
}
int[] click(){
  int[] spot = new int[2];
  if(mousePressed){
    spot[1] = mouseX;
    spot[1] = mouseX;
  }
  return spot;
}
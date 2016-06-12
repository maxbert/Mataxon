/* @pjs preload = "A.jpg"; */  
import java.util.*;
String[] stuff = {""}; 
String[] dict = {""};
Bag b = new Bag();
String let = b.take().getLet();
void setup(){
  size(800,800);
  loadImage("A.jpg");
  frameRate(10);
  stuff =loadStrings("words.txt");
  dict = split(stuff[0],'\n');
}
void draw(){
if(!b.isEmpty()){
  println(b.getSize());
  print(let);
  image(loadImage(let + ".jpg"),(40 * (int)(Math.random() * 20)), (40 * (int)(Math.random() * 20)), 40.0,40.0);
  let = b.take().getLet();
  //32
  }
}//end draw
int[] spot(float x, float y){
 int[] spots = new int[2] ;
 int xcor = (int)(x);
 int ycor = (int)(y);
 spots[1] = xcor/40;
 spots[2] = ycor/40;
 return spots;
}
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

  
/* @pjs preload = "A.jpg"; */  
import java.util.*;
 String[] stuff = {""};
  String[] dict;
  ArrayList<String> dictionary;
GameSphere game = new GameSphere();
boolean isSelected = false;
Tile given = new A();

void setup(){
  PFont f;  
  f = createFont("Aller_Rg.ttf", 32, true);
  size(800,800);
  frameRate(1600);
  stuff =loadStrings("words.txt");
  dict = stuff[0].split("\n");
   dictionary = new ArrayList<String>(Arrays.asList(dict));
}

int i =0;
boolean gameState = false;
void draw(){
  PFont f;  
  f = createFont("Aller_Rg.ttf", 32, true);
 /* while(!gameState){
    
    image(loadImage("Scrab.jpg"), 0,0,800,800);
    textFont(f, 100);
    fill(0);
    text("Click Anywhere to Play!",300,300);
    
    if(mousePressed){
      gameState = true;
    }
  }*/
  i++;
  
  image(loadImage("gray.jpg"),0,0,800.0,800.0);
  image(loadImage("Exchange.jpg"),650.0,100.0,100,50);
  image(loadImage("EndTurn.jpg"),650.0,350.0,100,50);
  image(loadImage("Undo.jpg"),675.0,175.0,50,50);
  fill(204, 102, 0);
  rect(128, 638, 43, 43);
  rect(178, 638, 43, 43);
  rect(228, 638, 43, 43);
  rect(278, 638, 43, 43);
  rect(328, 638, 43, 43);
  rect(378, 638, 43, 43);
  rect(428, 638, 43, 43);
  rect(640, 620, 130, 130);//score
  //for(int a = 0;  a < 8; a ++){
  //  if(mousePressed){
  //    if(mouseY > 638 && mouseY < 681){
  //      if(mouseX > (a*50 + 128) && mouseX <((a+1)*50 + 128)){
  
  //      stroke(0,225,0);
  //      rect(128.0 + a*50.0, 638, 43, 43 );
  //      }
  //    }
  //  }
  //}
  rect(648, 98, 103.0, 53.0);//buttomn for exchange
  rect(648, 348, 103.0, 53.0);//button for endturn
  rect(673, 173, 53.0, 53.0);
  image(loadImage("Exchange.jpg"),650.0,100.0,100,50);
  image(loadImage("EndTurn.jpg"),650.0,350.0,100,50);
  image(loadImage("Undo.jpg"),675.0,175.0,50,50);
  for(int i = 0; i < 15; i ++){
    for(int j = 0; j < 15; j++){
      image(loadImage(game.boardGetLet(i,j) + ".jpg"),(40 * i ), (40 * j), 40.0,40.0);
  }}
  if(game.getTurn() == 1){
  for (int i = 0; i < game.p1GetHandSize(); i ++){
      image(loadImage(game.p1GetLet(i) + ".jpg"), (130 + (i * 50)) , (640), 40.0, 40.0);}
  }
    else{
      for (int i = 0; i < game.p2GetHandSize(); i ++){
    image(loadImage(game.p2GetLet(i) + ".jpg"), (130 + (i * 50)) , (640), 40.0, 40.0);}
    }
  
  //if(mousePressed && game.spot(mouseX,mouseY)[0] < 15 && game.spot(mouseX,mouseY)[1] < 15) {
  //  int[] coords = game.spot(mouseX, mouseY);
  //    println("" + coords[0] + coords[1]);
  //}
  //if(mousePressed && game.handSpot(mouseX,mouseY) > -1){
  //  println("" + game.handSpot(mouseX,mouseY));}  
  //score
  textFont(f, 30);
  fill(0);
  text("Score", 660, 650);
  textFont(f, 18);
  fill(0);
  text("Player 1:" + game._player1.score, 650, 680);
  text("Player 2:" + game._player2.score, 650, 720);
  
  
    //println(dict[1]);
      
}//end draw

void mousePressed(){
    if(game.spot(mouseX,mouseY)[0] < 15 && game.spot(mouseX,mouseY)[1] < 15) {
    if(isSelected){
    int[] coords = game.spot(mouseX, mouseY);
      game._board.setTile(given,coords[0],coords[1]);
      game.playedX.add(coords[0]); game.playedY.add(coords[1]);
      isSelected = false;
    
  }
  }
  if(game.handSpot(mouseX,mouseY) > -1){
    isSelected = true;
    if (game.getTurn() == 1){
      given = game.p1GetTile(game.handSpot(mouseX,mouseY));
      game._player1.hand.give(game.handSpot(mouseX,mouseY));

    }else{
        given = game.p2GetTile(game.handSpot(mouseX,mouseY));
        game._player2.hand.give(game.handSpot(mouseX,mouseY));
   
      }
  }
    if(mouseX > 650 && mouseX < 750 && mouseY > 100 && mouseY < 150){
      game.exchange();
    }
    if(mouseX > 675 && mouseX < 725 && mouseY > 175 && mouseY < 225){
      game.undo();
    }
    if(mouseX > 650 && mouseX < 750 && mouseY > 350 && mouseY < 400){
      game.endTurn();
    }
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

int[] click(){
  int[] spot = new int[2];
  if(mousePressed){
    spot[1] = mouseX;
    spot[1] = mouseX;
  }
  return spot;
}
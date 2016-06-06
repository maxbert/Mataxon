class Tile extends BoardSpace{
  String let;
  int val;
  PImage img;
  public Tile(){
    val = 0;
    let = "";
  }
  public Tile(String letter, int value, PImage i){
    val = value;
    let = letter;
    img = i;
  }
  public int getVal(){
    return val;
  }
  public String getLet(){
    return let;
  }
  public void setVal(int a){
     val = a;
  }
  public void setLet(String l){
     let = l;
  }  
  public PImage getImg(){
    return img;
  }
  public void setImg(PImage a){
     img = a;
  }
}
//end tile
A extends Tile{
  String let = "A";
  int val = 1;
  PImage img = loadImage("A.jpg");
}
B extends Tile{
  String let = "B";
  int val = 3;
  PImage img = loadImage("B.jpg");
}
C extends Tile{
  String let = "C";
  int val = 3;
  PImage img = loadImage("C.jpg");
}
D extends Tile{
  String let = "D";
  int val = 2;
  PImage img = loadImage("D.jpg");
}
E extends Tile{
  String let = "E";
  int val = 1;
  PImage img = loadImage("E.jpg");
}
F extends Tile{
  String let = "F";
  int val = 4;
  PImage img = loadImage("F.jpg");
}
G extends Tile{
  String let = "G";
  int val = 2;
  PImage img = loadImage("G.jpg");
}
H extends Tile{
  String let ="H";
  int val = 4;
  PImage img = loadImage("H.jpg");
}
I extends Tile{
  String let = "I";
  int val = 1;
  PImage img= loadImage("I.jpg");
}
J extends Tile{
  String letV ="J";
  int val = 8;
  PImage img = loadImage("J.jpg");
}
K extends Tile{
  String let = "K";
  int val = 5;
  PImage img = loadImage("K.jpg");
}
L extends Tile{
  String let = "L";
  int val = 1;
  PImage img = loadImage("L.jpg");
}
M extends Tile{
  String let = "M";
  int val = 3;
  PImage img = loadImage("M.jpg");
}
N extends Tile{
  String let = "N";
  int val = 1;
  PImage img = loadImage("N.jpg");
}
O extends Tile{
  String let = "O";
  int val = 1;
  PImage img = loadImage("O.jpg");
}
P extends Tile{
  String let  = "P";
  int val = 3;
  PImage img = loadImage("P.jpg");
}
Q extends Tile{
  String let = "Q";
  int val= 10;
  PImage img = loadImage("Q.jpg");
}
R extends Tile{
  String let ="R";
  int val = 1;
  PImage img = loadImage("R.jpg");
}
S extends Tile{
  String let = "S";
  int val = 1;
  PImage img = loadImage("S.jpg");
}
T extends Tile{
  String let = "T";
  int val = 1;
  PImage img = loadImage("T.jpg");
}
U extends Tile{
  String let = "U";
  int val = 1;
  PImage img = loadImage("U.jpg");
}
V extends Tile{
  String let = "V";
  int val = 4;
  PImage img = loadImage("V.jpg");
}
W extends Tile{
  String let = "W";
  int val = 4;
  PImage img = loadImage("W.jpg");
}
X extends Tile{
  String let = "X";
  int val = 8;
  PImage img = loadImage("X.jpg");
}
Y extends Tile{
  String let = "Y";
  int val = 4;
  PImage img = loadImage("Y.jpg");
}
Z extends Tile{
  String let = "Z";
  int val = 10;
  PImage img = loadImage("Z.jpg");
}
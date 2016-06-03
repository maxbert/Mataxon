class Tile{
  String let;
  int val;
  public Tile(){
    val = 0;
    let = "";
  }
  public Tile(String letter, int value){
    val = value;
    let = letter;
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
  
  
  
}
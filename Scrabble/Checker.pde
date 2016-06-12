import java.util.*;
class Checker{
  public Checker(){
    
    
  }
  
  int checkDir(ArrayList<Integer> x, ArrayList <Integer> y){//1 = vertical, 0 = horizontal;
    boolean isHor = true;
    boolean isVert = true;
    ycor = y.get(0);
    xcor = x.get(0);
    for (int i = 0; i < y.size(); i++){
      if (y.get(i) != ycor){
        isHor = false;}}
    for (int i = 0; i < x.size(); i++){
      if (x.get(i) != ycor){
        isVert = false;}}
    if (isHor){
      return 0;}
    if (isVert){
      return 1;}
    else{
      return -1;}
  
  }
boolean wordDir(ArrayList<Integer> x, ArrayList<Integer> y){
    boolean bool = true;
    int dir = checkDir(x,y);
    Collections.sort(y);
    Collections.sort(x);
    if(dir == 0){//thus its going horizontal
      for(int a = 0; a < x.size(); a++){
          if(x.get(a) + 1 != x.get(a+1)){
            bool = false;
            break;
         }
      }
    }
    else if(dir == 1){
      for(int a = 0; a < y.size(); a++){
          if(y.get(a) + 1 != y.get(a+1)){
            bool = false;
            break;
        }
      }
    }
    if(dir != 1 && dir != 0){
      bool = false;
    }
    return bool;
  }//end wordir


}//end class
    
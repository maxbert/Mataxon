import java.util.*;
class Checker{
  public Checker(){
    
    
  }
  
  int checkDir(int x1, int x2, int y1, int y2){
    int dir = -1;//1 = vertical, 0 = horizontal;
    if(x1 == x2){
      dir = 1;
    }
    else if(y1 ==y2){
      dir = 0;
    }
    
    return dir;
  }
boolean wordDir(ArrayList<Integer> x, ArrayList<Integer> y){
    boolean bool = true;
    int dir = checkDir(x.get(0),x.get(1),y.get(0),y.get(1));
    if(dir == 0){//thus its going horizontal
      for(int a = 0; a < x.size(); a++){
          if(x.get(a) != x.get(a+1)){
            bool = false;
            break;
         }
      }
    }
    else if(dir == 1){
      for(int a = 0; a < y.size(); a++){
          if(y.get(a) != y.get(a+1)){
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
    
class Player{
  int score;
  String name;
  Hand righty;
  public Player(){
     righty = new Hand();
     score = 0;
     name = null; 
  }//end construct
  public Player(String n){
     righty = new Hand();
     score = 0;
     name = n; 
  }//end overloaded
  public void addToScore(int num){
     score += num;
  }
  public void pickTiles(Bag b){
     righty.fillHand(b); 
  }
  public void Exchange(int[] spots, Bag b){
     for(int a : spots){
        righty.deposit(a); 
     }
     righty.fillHand(b);
  }
  public void Play(int let){
    //righty.deposit
  }
  public int getScore(){
    return score;
  }
}//end class
class Player{
  Hand hand;
  int score;
  Player(){
    hand = new Hand();
    score = 0;
  public draw(Bag b){
    hand.fillHand(b);}
  public altScore (int i){
    score += i;}
   
   
}
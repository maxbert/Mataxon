class Hand{
  private ArrayList<Tile> hand = new ArrayList<Tile>();
  
  public Hand(Bag b){
    fillHand(b);
  }
  
  int size(){
    return hand.size();}
  
  public void fillHand(Bag b){
    while (hand.size() < 8){
      hand.add(b.take());}}
      
  public Tile give(int n){
      return hand.remove(n);}
      
  public Tile see(int n){
    if(n >= size()){
      return new Blarg();
    }
      return hand.get(n);}
      
   public void take(Tile t){
     hand.add(t);}
}
  
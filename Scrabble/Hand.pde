class Hand{
  private ArrayList<Tile> _hand = new ArrayList<Tile>();
  
  public Hand(Bag b){
    fillHand(b);
  }
  
  int size(){
    return _hand.size();}
  
  public void fillHand(Bag b){
    while (_hand.size() < 7){
      _hand.add(b.take());}}
      
  public Tile give(int n){
      return _hand.remove(n);}
      
  public Tile see(int n){
    if(n >= size()){
      return new Blarg();
    }
      return _hand.get(n);}
      
   public void take(Tile t){
     _hand.add(t);}
}
  
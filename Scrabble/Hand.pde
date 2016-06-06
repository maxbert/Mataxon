class Hand{
  private ArrayList hand = new ArrayList<Tile>();
  
  public Hand(bag b){
    fillHand(b);
  }
  public void fillHand(Bag b){
    while (hand.size() < 8){
      hand.add(b.take());}}
  public void deposit ( 
  
  
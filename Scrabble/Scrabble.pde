void setup(){
  size(800,800);
}
void draw(){
  Bag b = new Bag();
  Image =(b.take().getImg(),Math.random() * 800, Math.random() * 800, 40,40);
}
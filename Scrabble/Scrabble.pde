void setup(){
  size(800,800);
}
void draw(){
  Bag b = new Bag();
  PImage img = b.take().getImg();
  image(img,(float)(Math.random() * 800), (float)(Math.random() * 800), 40.0,40.0);
}
/* @pjs preload = "A.jpg"; */  
  Bag b = new Bag();

void setup(){
  size(800,800);

}
void draw(){
  Tile img = b.take();
  String let = img.getLet();
  image(loadImage("" + let + ".jpg"),(float)(Math.random() * 800), (float)(Math.random() * 800), 40.0,40.0);
}
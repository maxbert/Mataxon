/* @pjs preload = "A.jpg"; */  
Bag b = new Bag();
void setup(){
  size(800,800);
  loadImage("A.jpg");

}
void draw(){
  String let = b.take().getLet();
  image(loadImage(let + ".jpg"),(40 * (int)(Math.random() * 20)), (40 * (int)(Math.random() * 20)), 40.0,40.0);
}
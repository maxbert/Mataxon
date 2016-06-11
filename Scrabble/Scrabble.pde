/* @pjs preload = "A.jpg"; */  
Bag b = new Bag();
void setup(){
  size(800,800);
  loadImage("A.jpg");

}
void draw(){
  image(loadImage("A.jpg"),(40 * (int)(Math.random() * 15)), (40 * (int)(Math.random() * 15)), 40.0,40.0);
}
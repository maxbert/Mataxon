/* @pjs preload = "A.jpg"; */  
Bag b = new Bag();
String let = b.take().getLet();
void setup(){
  size(800,800);
  loadImage("A.jpg");
  frameRate(10);

}
void draw(){
if(!b.isEmpty()){
  println(b.size());
  print(let);
  image(loadImage(let + ".jpg"),(40 * (int)(Math.random() * 20)), (40 * (int)(Math.random() * 20)), 40.0,40.0);
  let = b.take().getLet();
  //32
}
}
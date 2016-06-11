class Bag{
    ArrayList<Tile> bagged = new ArrayList<Tile>();
    
Bag(){
  
  Tile A1 = new A();
  bagged.add(A1);
  Tile B2 = new B();
  bagged.add(A1);
  Tile C3 = new C();
  bagged.add(C3);
   bagged.add(A1);
   bagged.add(A1);
   bagged.add(A1);
   bagged.add(A1);
   bagged.add(A1);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(B2);
   bagged.add(C3);
   bagged.add(C3);
   bagged.add(C3);
   bagged.add(C3);
   bagged.add(C3);
   bagged.add(C3);
   bagged.add(C3);
   
   

  
  
 

 
}

Tile take(){
  if (!isEmpty()){
  int num = (int)(Math.random()*bagged.size());
  return bagged.remove(num);}
  else{
    bagged.remove(0);
    return new A();}
}
int size(){
  return bagged.size();}
  
boolean isEmpty(){
  return bagged.size() == 0;
}

}
Spaceship ben = new Spaceship();
Star[] ken= new Star[300];
public void setup() 
{
 size(500,500);
 for(int i=0;i<ken.length;i++){
  ken[i]=new Star();
 }
}
public void draw() 
{
   background(0);
   noStroke();
   for(int i=0;i<ken.length;i++){
     ken[i].show();
   }
   ben.show();
   ben.move();
}
public void keyPressed(){
  if (key=='w')
  ben.accelerate(2);
  if(key=='a')
  ben.turn(-30);
  if(key=='s')
  ben.accelerate(-2);
  if(key=='d')
  ben.turn(30);
  if(key=='h')
  ben.hyperSpace();
  
}

Spaceship ben = new Spaceship();
Star[] ken= new Star[300];
ArrayList<Asteroid> aen = new ArrayList <Asteroid>();
int count = 0;
public void setup() 
{
 size(500,500);
 for(int i=0;i<ken.length;i++){
  ken[i]=new Star();
 }
 for(int i=0;i<30;i++){
   aen.add(new Asteroid());
 }
}
public void draw() 
{
   background(0);
   ben.move();
   ben.show();
   for(int i=0;i<ken.length;i++){
     ken[i].show();
   }
   for (int i = 0; i<aen.size(); i++) {
    aen.get(i).show();
    aen.get(i).move();
    double distance = dist((float)ben.getCenterX(), (float)ben.getCenterY(), (float)aen.get(i).getCenterX(), (float)aen.get(i).getCenterY());
    if (distance <= 20) {
      aen.remove(i);
      count+=10;
    }
   }
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

Spaceship ben = new Spaceship();
Star[] ken= new Star[300];
ArrayList<Asteroid> aen = new ArrayList <Asteroid>();
ArrayList<Bullet> tren=new ArrayList <Bullet>();

public void setup() 
{
 size(500,500);
 for(int i=0;i<ken.length;i++){
  ken[i]=new Star();
 }
 for(int i=0;i<30;i++){
   aen.add(new Asteroid());
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
    double distance = dist((float)sen.getCenterX(), (float)sen.getCenterY(), (float)aen.get(i).getCenterX(), (float)aen.get(i).getCenterY());
    if (distance <= 20) {
      aen.remove(i);
      count+=10;
    }
   }
   for(int i=0;i<tren.size();i++){
     tren.get(i).show();
     tren.get(i).move();
    double d = dist((float)tren.get(i).getCenterX(),  (float)tren.get(i).getCenterX(), (float)aen.get(i).getCenterX(), (float)aen.get(i).getCenterY());
    if (d <=20){
     aen.remove(i); 
     count+=10;
     tren.remove(i);
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

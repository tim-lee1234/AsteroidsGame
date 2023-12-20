//your variable declarations here
Spaceship sen = new Spaceship();
Star[] ken= new Star[300];
ArrayList<Asteroid> aen = new ArrayList <Asteroid>();
ArrayList<Bullet> ben=new ArrayList <Bullet>();
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
   sen.move();
   sen.show();
   for(int i=0;i<ken.length;i++){
     ken[i].show();
   }
   for (int i = 0; i<aen.size(); i++) {
    aen.get(i).move();
    aen.get(i).show();
    float distance = dist((float)aen.get(i).getX(), (float)aen.get(i).getY(), (float)sen.getX(), (float)sen.getY());
    if (distance <= 20) {
      aen.remove(i);
    }
   }
   for(int i=0;i<ben.size();i++){
     for(int j=0; j<aen.size();j++){
       if (dist((float)(aen.get(j).getX()),(float)(aen.get(j).getY()),(float)(ben.get(i).getCenterX()),(float)(ben.get(i).getCenterY())) < 30)
       {
     ben.remove(i);
     aen.remove(j); 
     aen.add(new Asteroid());
     break;
     }
     }
 }
 for(int i=0;i<ben.size();i++){
  ben.get(i).move();
  ben.get(i).show();
 }
}
public void keyPressed(){
  if (key=='w')
  sen.accelerate(2);
  if(key=='a')
  sen.turn(-30);
  if(key=='s')
  sen.accelerate(-2);
  if(key=='d')
  sen.turn(30);
  if(key=='h')
  sen.hyperSpace();
  if(key==' ')
  ben.add(new Bullet(sen));
}

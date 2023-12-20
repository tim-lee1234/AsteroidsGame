Spaceship ben = new Spaceship();
Star[] ken= new Star[300];
ArrayList<Asteroid> aen = new ArrayList <Asteroid>();
ArrayList <Bullet> gren=new ArrayList <Bullet>();

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
    for(int i=0;i<gren.size();i++){
     for(int j=0; j<aen.size();j++){
       if (dist((float)(aen.get(j).getX()),(float)(aen.get(j).getY()),(float)(gren.get(i).getCenterX()),(float)(gren.get(i).getCenterY())) < 30)
       {
     gren.remove(i);
     aen.remove(j); 
     aen.add(new Asteroid());
     break;
     }
     }
 }
 for(int i=0;i<gren.size();i++){
  gren.get(i).move();
  gren.get(i).show();
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
  if(key==' ')
  gren.add(new Bullet(ben));

}



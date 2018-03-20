int radius= 80;
String virus= "A Virus: By Nate";
void setup(){
  size(400,400);
//  ellipseMode(CENTER);
noStroke();
fill(0);
text(virus, 100,100);
}
void draw(){
 translate(width/2, height/2);
 fill(150);
 ellipse(0,0,180,180);
 drawVirus(width/2, height/2, 100,8);
 fill(255);
}
void drawVirus(int newX, int newY, int radius, int num){
float angle=0;

angle++;
if(num>1){
  num-=1;
  radius-=10;
for(float i=0;i<360;i+=4){
  newX= int(sin(angle)*radius);
newY= int(cos(angle)*radius);
rotate(angle);
ellipse(newX,newY,5,5);
}
drawVirus(newX, newY, radius, num);
}
}
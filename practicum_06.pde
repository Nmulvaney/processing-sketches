/*
Nate Mulvaney
Dr. VOn Nagy
Intro to Coding
Clock Project

This sketch gives Mr. D'lambert a functioning revolutionary time clock
on the left, and a normal clock on the right. They attempt to tell the correct time as it is currently. 
*/



String clockworks= "Scorpion Clockworks";

float x;

void setup(){
 size(400,300);
 ellipseMode(CENTER);

}
void draw(){
int s= second();
int m= minute();
int h=hour();
  noFill();
 
 stroke(0);

  background(150);
  text(clockworks, width/3, height/1.25);
  ellipse(275,150,100,100);
  ellipse(150,150,100,100);
  
//second hand, rotates by 6 degrees every second
 float x=radians(((s/60.0)*360)+ PI/2+PI);
  pushMatrix();
  translate(275,150);
  rotate(radians(-90));
  line(0,0, 40*cos(x), 40*sin(x));
  popMatrix();

//minute hand, rotates by 6 degrees every minute
  float y=radians(m*6)+PI/2 +PI;
  stroke(40,100,200);
  pushMatrix();
  translate(275,150);

  line(0,0,50*cos(y), 50*sin(y));
popMatrix();
//hour hand, multiply it by 30 because every hour is 30 degree switch
float z= radians(h*30)+PI/2+PI;
stroke(200,90,90);
pushMatrix();
translate(275,150);
stroke(0);
line(0,0,20*cos(z), 20*sin(z));
popMatrix();
float es= h*3600 + m*60 + s;
float ers= es*1.157;
float rs= ers%100;
float rm= (ers%10000-rs)/100;
float rh= ((ers%100000)-(rm*100)-rs/10000);
float rx= radians(rs*3.6)+1.5*PI;
float ry= radians(rm*3.6)+1.5*PI;
float rz= radians(rh*(72%10))+1.5*PI;
//conversions between normal time and revolutionary time
ellipse(150,150,100,100);
translate(150,150);
stroke(100,100,150);
line(0,0,40*cos(rx), 40*sin(rx));
stroke(200,40,80);
line(0,0,50*cos(ry), 50*sin(ry));
stroke(40,80,200);
line(0,0,30*cos(rz), 30*sin(rz));
}
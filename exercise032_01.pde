
/* Nate Mulvaney
   Intro to Coding
   Dr. von Nagy
   
   This sketch shows a spiral path of a circle that uses motion blur. 
   */
float angle=0;
float radius=120;
void setup(){
  size(400,400);
  noStroke();
}
void draw(){
  fill(0,25);
  rect(0,0,width,height);
  translate(width/2, height/2);
  float gAcc=1.15;
  //attmept at accelerating the ball
  if(radius<120){
    gAcc=gAcc+.25;
  }
  //circular motion used in calculate, time the acceleration due to gravity
  float x= (sin(angle)*radius)*gAcc;
  float y= (cos(angle)*radius)*gAcc;
  
  fill(255);
  ellipse(x,y,20,20);
  //increments to make the spiral shape
  angle= angle+0.05;
  radius= radius-0.25;
  //so it doesn't go back out
  if(radius<1){
    radius=0;
  }
}
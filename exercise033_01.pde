/*  Nate Mulvaney
    Dr. von Nagy
    Intro to Coding
    
    This sketch draws a pendulum that behaves like a pendulum would in real life. Using
    the equation given, -g/r * sin(theta), I created a working pendulum. 
    */
    
float angle= PI/6;
float velocity;
float acceleration;
float gravity= 0.492;
void setup(){
  size(400,400);
  frameRate(30);
}
void draw(){
  // for blurring
fill(0,20);
rect(0,0,width,height);
translate(100,100);
  acceleration= (-1*gravity/100)*sin(angle);
  //adding the equation into the code
  velocity+= acceleration;
  angle+= velocity;
  //creating the sin/cos values that fluxuate
  float x= 100*sin(angle);
  float y= 100*cos(angle);
  stroke(255);
  line(100,100,x+100, y+100);
  fill(50,50,200);
  noStroke();
  ellipse(x+100,y+100, 20,20);


}
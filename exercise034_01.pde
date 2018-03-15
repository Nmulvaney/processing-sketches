/* Nate Mulvaney
   Dr. von Nagy
   Intro to Coding
   
   This sketch shows Brownian motion with four points. These points move
   randomly, just like particles do in Brownian motion. 
   */

int repeat=0;
float rx= 5;
float ry=5;
void setup(){
  size(400,400);
  strokeWeight(6);
  frameRate(10);
}
void draw(){
// background(0);
     if(repeat<1000){
     repeat++;
     //drawing four points
       drawPoint(200,40);
      drawPoint(200,100);
      drawPoint(200,160);
      drawPoint(200,240);
     }
      
}
void drawPoint(float x, float y){
  //giving random numbers to add to the point location
  rx=rx+random(-2,2);
  ry= ry+random(-2,2);
  stroke(random(255));
  point(x+rx, y+ry);
}
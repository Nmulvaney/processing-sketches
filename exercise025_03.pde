/*

Nate Mulvaney
Dr. Von Nagy
Intro to Coding

This sketch is the same Newton's cradle model, but you can change the view of the drawing 
with the mouseX and mouseY values. 
*/

void setup(){
  size(400,400,P3D);
} void draw(){
  background(150);

  

 pushMatrix();
 translate(100,300);
 fill(195,167,127);
  box(50,50,-50);
  translate(25,0);
  box(400,50,-50);
translate(225,0);
  box(50,50,-50);
  popMatrix();
  
 pushMatrix();

  fill(200);
  translate(125,200);
  sphere(20);
  translate(50,0);
  sphere(20);
  translate(50,0);
  sphere(20);
  translate(50,0);
  sphere(20);
  translate(50,0);
  sphere(20);
  popMatrix();
 stroke(0);
  line(100,50,0, 100,300,0);
  translate(250,0);
  line(100,50,-0,100,300,0);
  translate(-250,0);
  line( 125,50,0,125,200,0);
  line(175,50,0,175,200,0);
  line(225, 50,0,225,200,0);
  line(275,50,0,275,200,0);
  line(325,50,0,325,200,0);
  line(100,50,0,350,50,0);
camera(mouseX, mouseY,0, width/2, height/2, 0, 0,1,0);
}
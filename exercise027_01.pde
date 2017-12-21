/*
   Nate Mulvaney
   Dr. Von Nagy
   Intro to Coding
   
   This sketch shows how you can transform a basic shape using translting, rotating, 
   and scaling. By using the arrow keys, one can rotate and scale the shape, and move it
   around with the mouse.
   */

PShape airplane;
int rotation=0;
float size=1;
void setup(){
  size(1000,1000);
  airplane= loadShape("IEC5009_Standby_Symbol.svg");
}
void draw(){
frameRate(20);
  background(200);
  translate(mouseX, mouseY);
 if(key==CODED){
 if(keyCode==UP){
     size=size+0.05;
  }
  if(keyCode==DOWN){
    size=size-0.05;
  }
  if (keyCode==LEFT){
     rotation=rotation+1;
  }
  if (keyCode==RIGHT){
    rotation= rotation-1;
  }
 }
  scale(size);
  rotate(radians(rotation));
  shape(airplane, 0,0);
  scale(size);
}
/* Nate Mulvaney
   Dr. Von Nagy
   Intro to Coding
   
   This sketch uses ambient lights, specular lights, and shininess in spheres. 
   The sphere on the left has an ambirnt light that depends on the position of the mouse 
   for its lighting. The sphere on the right is controlled by specular lights and shininess. 
   */

void setup(){
  size(400,400,P3D);
  noStroke();
}
void draw(){
lights();

  float r=map(mouseX, 0 , width, 0,255);
  float g= map(mouseY, 0 ,height, 0,255);
  ambientLight(r,g,200);
  translate(width/4, height/4,0);
  sphere(30);
  float s= map(mouseX, 0, width, 1,5);
  lightSpecular(200,100,150);
  ambientLight(10,10,10);
  shininess(s);
  translate(width/4, height/4, 0);
  sphere(30);
  
}
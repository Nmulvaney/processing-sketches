/* Nate Mulvaney
   Intro to Coding
   Dr. Van Nagy
   11/13/17
   
   
This sketch shows the use of the red, green, and blue values in this picture, 
and is illustated in the bar graph next to the picture. The small dash on the y-axis is
the color maximum (255) for each color. The color is chosen by the position of the mouse.
*/


PImage rocks;
void setup(){
  rocks= loadImage("2016-photocontest-yosemite-w-1.jpg");
  size(1500,500);
}
void draw(){
  background(255);
  image(rocks, 0, 0);
  color c=get(mouseX, mouseY);
float r= red(c);
  float g= green(c);
  float b= blue(c);
  strokeWeight(6);
  stroke(0);
line(1000, 400, 1400, 400);
line(1000, 50, 1000, 400);
line(995, 145, 1005, 145);
fill(c);
strokeWeight(10);
rect(1350, 100, 70, 70);
noStroke();
fill(200, 50, 50);
rect(1050, 400, 50, -1*r);
fill(50, 200, 50);
rect(1150, 400, 50, -1*g);
fill(50,50,200);
rect(1250, 400, 50, -1*b);
fill(c);
strokeWeight(10);
rect(1350, 100, 70, 70);
}
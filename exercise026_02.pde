/* Nate Mulvaney
   Intro to Coding
   Dr. Von Nagy
   
   This sketch has two planets, earth and mars, which pop up if 
   you press the first letter of the planet you want on the keyboard. 
   This sketch simulates rotating around the planet as it orbits the sun at one point, so you are able to 
   see both the light and the dark side of the planet
   */
PImage space;
PShape globe;
PShape globe2;
PImage earth;
PImage mars;
int i=0;
float angle=0.0;
float angle2=0.0;
void setup(){
 space= loadImage("p1639ay-goodss-160930.jpg");
  earth= loadImage("tmp494559552709066754.jpg");
  mars= loadImage("images.jpeg");
  globe= createShape(SPHERE,200);
  globe2= createShape(SPHERE,150);
  globe2.setTexture(mars);
  globe.setTexture(earth);

  noStroke();
  size(600,600,P3D);
  
}
void draw(){
  if((keyPressed==true)&&(key=='e')){
   if (i<100000){
    drawEarth(width/2, height/2, 200);
    i=i+2;
  }
  }
  if((keyPressed==true)&&(key=='m')){
    drawMars(width/4, height/4, 150);
  }
  
}
void drawEarth(int xpos, int ypos, int size){
  createShape();
beginShape();
texture(space);
globe.setStroke(0);
noStroke();
vertex(0,0,0,0,0);
vertex(600,0,0,2843,0);
vertex(600,600,0,2843,1731);
vertex(0,600,0,0,1731);
endShape(CLOSE);
noStroke();
translate(width/2, height/2,10);
if(angle<200000){
  
  rotateY(radians(angle));
  angle= angle+0.25;
}
rotateZ(radians(-23.5));
directionalLight(199,208,203, 40,60,0);
shape(globe);
scale(1/2);
}

void drawMars(int xpos2, int ypos2, int size2){
 createShape();
  beginShape();

globe2.setStroke(0);
noStroke();
texture(space);
vertex(0,0,0,0,0);
vertex(600,0,0,2843,0);
vertex(600,600,0,2843,1731);
vertex(0,600,0,0,1731);
endShape(CLOSE);
noStroke();
translate(width/2, height/2,10);
if(angle<200000){
  
  rotateY(radians(angle));
  angle= angle+0.25;
}

rotateZ(radians(-25));
//directionalLight(199,208,203, 40,60,0);

shape(globe2);
}
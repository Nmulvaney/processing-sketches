/*  Nate Mulvaney
    Dr. von Nagy
    Intro to Coding
    3/4/18
    
    This sketch shows tries to resemble water when there is a ripple using noise. 
    */

float xnoise = 0.0;
float ynoise = 0.0;
float inc = 0.04;
int disc= 2;


void setup() {
  size(400,400);
  noSmooth();
  noFill();
  frameRate(10000);
  noiseSeed(8);
}

void draw() {
translate(width/2, height/2);
  //creating the disc
  if(disc<600){
    disc++;
  }
      float gray = noise(xnoise, ynoise) * 180;
      //makes the value random, scales it between 0-180
      stroke(gray);
      xnoise = xnoise + inc;
      ynoise= ynoise+inc;
     // changes the stroke of the growing disc
    ellipse(0,0,disc,disc);

    
  
}
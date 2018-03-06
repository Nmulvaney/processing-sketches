/* Nate Mulvaney
   Dr. von Nagy
   Intro to Coding
   
   This sketch is a sketch that uses the random function to make a random gray screen. 
   If you hold the 1 key, then the amount used will increase, and if you hold the 0 key,
   the opposite happens and that amount is printed at the bottom. 
   */

float xnoise =0.0;
float ynoise =0.0;
float amount= 0.1;
void setup(){

  size(800,400);
  noSmooth();
}
void draw(){;
//changing the amount
 if((keyPressed==true)&&(key=='1')){
    amount= amount+0.005;
 }
 
 if((keyPressed==true)&&(key=='0')){
   amount= amount-0.005;
 }
 //showing the amount
 println(amount);
  background(0);
  for(int y=0;y<height;y++){
    for(int x=0;x<width;x++){
      //making the gray color itself
      float gray= noise(xnoise, ynoise)*255;
      stroke(gray);
      point(x,y);
      xnoise= xnoise+amount;
    }
    //resets the value so it doesn't go crazy
    xnoise=0;
    ynoise= ynoise+amount;
  }
}
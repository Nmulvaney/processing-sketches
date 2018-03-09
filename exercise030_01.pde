/* Nate Mulvaney
   Intro to Coding
   Dr. von Nagy
   
   THis sketch shows the difference between random() and randomSeed(). 
   It shows this because there are two randomly generated lines, but the 
   one on the top, using randomSeed, generates the same random pattern every time
   and is highlighted by the triangle pointed at it. 
   */

int xpos =0;
int xpos2= 0;
void setup(){
  size(1600,400);

}
void draw(){
  
  //  making the first set of random lines, truly random
  for(int i=0;i<200;i+=2){
     int r= int(random(250,270));
    xpos+=2;
    line(xpos, r, xpos, r+30);
  }
  
  
  randomSeed(4);
 //looks like the same thing, except with randomSeed, so it is the same every time
 
  for(int j=0;j<200;j+=2){
    int r2= round(random(150,170));
    xpos2+=2;
    line(xpos2, r2, xpos2, r2+30);
  }
  triangle(0,100,50,100,25,150);
  //triangle highlights the first 5 ish lines at the top, notice how they are 
  //simliar and the bottom one is not
}
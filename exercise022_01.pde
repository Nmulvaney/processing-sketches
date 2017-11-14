/* 
   Nate Mulvaney
   Intro to Coding
   Dr. Van Nagy
   11/13/17
 
This sketch has a picture that focuses one a group of pixels. From this group of pixels,
the color is extracted, and is used to draw on the right side of the picture. It also uses
tthe WASD pad to control the pixels used.
*/
PImage  img;
int x=0;
int y=0;
String paintSpace= "Paint Here";
void setup(){
  size(5000,600);
  img= loadImage("2016-photocontest-yosemite-w-1.jpg");
}
void draw(){
  image(img, 0,0);
    if((keyPressed==true)&&(key=='w')){
      y=y-2;
    }
    if((keyPressed==true)&&(key=='s')){
      y=y+2;
    }
    if((keyPressed==true)&&(key=='a')){
      x=x-2;
    }
    if((keyPressed==true)&&(key=='d')){
      x=x+2;
    }
  
 color c= get(x, y );
 fill(c);
 stroke(0);
 rect(x, y, x+10, y+10);
 stroke(c);
 strokeWeight(10);
point(mouseX, mouseY); 
 strokeWeight(1);
 textSize(60);
 stroke(0);
 text(paintSpace, 1000, 50);
 
}
  
/* Nate Mulvaney
   Intro to COding
   Dr. Van Nagy
   Due 11/9
   
   This sketch messes with the filter of images, it goes from really light to really dark
   */

PImage iguana;
PImage slam;
PImage land;
float i=0.1;
void setup(){

size(2000,2000);
land= loadImage("_83351965_explorer273lincolnshirewoldssouthpicturebynicholassilkstone.jpg");
slam= loadImage("maxresdefault.jpg");
iguana= loadImage("interesting-facts-about-ecuado5.jpg");
}
void draw(){
  if(i<=1){
    i=i+0.01;
  }
  image(land, 200, 200);
  tint(100,200,70);
  image(slam, 300, 200);
  tint(200, 100, 70);
  image(iguana, 100, 100);
  noTint();
  filter(THRESHOLD, i);
  
  
}
void setup(){
  size(120,200);
}
void draw(){
 background(0);
  colorMode(HSB,360,100,100);
stroke(0);
blendMode(ADD);
fill(120,100,100,175);
ellipse(40,40,40,40);
fill(0,100,100,175);
ellipse(60,40,40,40);
fill(0,100,100,150);
ellipse(40,120,40,40);
fill(120,100,100,150);
ellipse(40,145,40,40);
fill(250,100,100,150);
ellipse(60,135,40,40);
}
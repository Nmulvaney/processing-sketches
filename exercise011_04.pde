color c1= color(200,50,50);
color c2= color(50,200,50);
color c3= color(50,50,200);
color c4= color(200,50,50,50);
color c5= color(50,200,50,50);
color c6= color(50,50,200,50);
color c7= color(0);

void setup(){
background(c7);
  size(200,200);
}
void draw(){
  fill(c2);
ellipse(50,40, width*.25, height*.25);
fill(c1);
ellipse(80,40, width*.25, height*.25);
fill (c3);
ellipse(65, 55, width*.25, height*.25);
fill(c5);
ellipse(50,120, width*.25, height*.25);
fill(c4);
ellipse(80, 120, width*.25, height*.25);
fill(c6);
ellipse(65, 135, width*.25, height*.25);
// The ellipses are the exact same dimenstions with the exact same color sets, but the difference is transparency. If colors are translucent, they blend, unlike opaque colors. 
}
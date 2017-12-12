void setup(){
  size(200,200,P3D);
}
void draw(){
 background(200);
  float rx= map(mouseX, 0, height, -PI, PI);
 float ry= map(mouseY, 0, width, -PI,PI);
 rotateX(rx);
 rotateY(ry);
  line(0,100,200,100);
  line(100,0,100,200);
  line(100,100,-200, 100,100,200);
  fill(200,40,70);
translate(100,100,0);
  sphere(25);
  
  
}
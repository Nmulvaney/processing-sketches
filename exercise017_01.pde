String billy= "billy";
void setup(){
  size(600,600);
}
void draw(){
  background(0);
  fill(random(255));
  textSize(400);
  text(billy, mouseX, mouseY);
}
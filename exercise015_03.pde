void setup(){
  size(200,200);
  textSize(60);
}
void draw(){
  if (keyPressed==true){
    text(key, random(200), random(200));
  }
}
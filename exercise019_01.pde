float x;
float y;
float x2;
float y2;
void setup(){
  size (500,500);
}
void draw(){
 if(keyPressed==false){
   text("Natem", x, y);
  text("Natem", x2, y2);
 }
 if(keyPressed==true){
   text(key, x, y);
   text(key, x, y);
 }
  line(x, y, x2, y2);
 y= random(500);
textAlign(LEFT);
drawType(width*0.75);
textAlign(RIGHT);
drawType(width*0.25);
}
void drawType(float x){
  text("cod", x, 130);
  text("ing", x, 250);
  text("class", x, 390);
}
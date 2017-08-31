PFont font;
String[] words= { "5/9", "(F-32)", "=C", ""};

int whichWord =0;
void setup(){
  size(100,100);
  font=createFont("sourcePro-Light.otf", 24);
  textFont(font);
  textAlign(CENTER);
  frameRate(4);
  fill(0);
}
void draw(){
  background(204);
  text(words[whichWord], width/2, 30);
  whichWord++;
  if(whichWord== words.length){
    whichWord=0;
  }
}
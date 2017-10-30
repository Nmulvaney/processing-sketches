int x=300;
int y=x;
int textpositionx=300;
int textpositiony=x;
String mclovin= "McLovin";
PFont randomFont;

void setup(){
  size(600,600);
  textSize(20);
  randomFont= createFont( "NanumGothicExtraBold", 32);
  textFont(randomFont);
}
void draw(){
  if(key=='a'){
    x--;
    textpositionx--;
  }
  if(key=='d'){
    x++;
    textpositionx++;
  }
  if(key=='w'){
    y--;
    textpositiony--;
  }
  if(key== 's'){
    y++;
    textpositiony++;
  }
  noStroke();
  fill(x, y, 100, 10);
  ellipse(x,y, 20, 20);
  text(mclovin, x+10, y+2);
}
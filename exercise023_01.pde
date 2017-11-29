String explanation= "These are squares that are proportional to the Golden Ratio, or 1.618";
float gr= 1.6188033;
void setup(){
  size(1600,800);
} void draw(){
   fill(0);
     text(explanation, 0,100);
  stroke(100);
  fill(0);
  scale(gr/2);
  rect(1000,100, 200,200);
  fill(30);
  rotate(PI/32);
    rect(1000,100,(200/gr), (200/gr));
    fill(90);
    rotate(PI/32);
    rect(1000,100, ((200/gr)/gr), ((200/gr)/gr));
    fill(150);
    rotate(PI/32);
    rect(1000,100, (((200/gr)/gr)/gr), (((200/gr)/gr)/gr));
    fill(210);
    rotate(PI/32);
    rect(1000,100, ((((200/gr)/gr)/gr)/gr), ((((200/gr)/gr)/gr)/gr));
    scale(gr);
    
  }
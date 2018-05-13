Score gameScore;
A1 pongA1;
PVector ballPos;
PVector ballVel;
int boxHeight;
void setup(){
  textSize(40);
  size(600,400);
  ballPos= new PVector(width/2, height/2);
  ballVel= new PVector(4.0, 2.5);
  gameScore= new Score(0,0);
  pongA1= new A1(height/2);
 
}
void draw(){
  background(100);
  gameScore.update();
  gameScore.display();
  pongA1.display();
  pongA1.bounce();
 int roundVal= round(ballPos.y);
  boxHeight=mouseY;
 
  if(boxHeight>(height-40)){
    boxHeight= (height-40);
  }

  fill(255);
  noStroke();
  rect(10,boxHeight, 20,40);
  stroke(0);
  
  ballPos.add(ballVel);
  if(ballPos.y>height || ballPos.y<0){
    ballVel.y=ballVel.y*-1;
  }
  if(ballPos.x>width){
    ballVel.x= ballVel.x*-1;
  }
  if(ballPos.y==boxHeight){
    println("match");
  }
  if(((roundVal==boxHeight)||(roundVal==boxHeight+1)||(roundVal==boxHeight+2)||(roundVal==boxHeight+3)||(roundVal==boxHeight+4)||(roundVal==boxHeight+5)
  ||(roundVal==boxHeight+6)||(roundVal==boxHeight+7)||(roundVal==boxHeight+8)||(roundVal==boxHeight+9)||(roundVal==boxHeight+10)||
  (roundVal==boxHeight+11)||(roundVal==boxHeight+12)||(roundVal==boxHeight+13)||(roundVal==boxHeight+14)||(roundVal==boxHeight+15)||
  (roundVal==boxHeight+16)||(roundVal==boxHeight+17)||(roundVal==boxHeight+18)||(roundVal==boxHeight+19)||(roundVal==boxHeight+20)||
  (roundVal==boxHeight+21)||(roundVal==boxHeight+22)||(roundVal==boxHeight+23)||(roundVal==boxHeight+24)||(roundVal==boxHeight+25)||
  (roundVal==boxHeight+26)||(roundVal==boxHeight+27)||(roundVal==boxHeight+28)||(roundVal==boxHeight+29)||(roundVal==boxHeight+30)||
  (roundVal==boxHeight+31)||(roundVal==boxHeight+32)||(roundVal==boxHeight+33)||(roundVal==boxHeight+34)||(roundVal==boxHeight+35)||
  (roundVal==boxHeight+36)||(roundVal==boxHeight+37)||(roundVal==boxHeight+38)||(roundVal==boxHeight+39)||(roundVal==boxHeight+40))&&(ballPos.x==32)){
    ballVel.x= ballVel.x*-1;
    ballVel.y=ballVel.y*random(0.4, 2);
 
  }
 // println(ballPos.x, ballPos.y);
  ellipse(ballPos.x, ballPos.y,10,10);
}
 
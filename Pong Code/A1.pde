class A1{
  int ypos;
  A1( int Y ){
    ypos=Y;
  }
  void display(){
    boolean move= false;
    if(ballPos.x>=width/2){
      move=true;
    }
    else{
      move=false;
    }
    if(!move){
      if(ypos>height/2){
        ypos= ypos-round(dist(0,height/2, 0, ypos)/10);
      }
      if(ypos<height/2){
        ypos= ypos+round(dist(0,height/2, 0, ypos)/10);
      }
    }
    if(move){
      if(ypos<ballPos.y){
      if(dist(0,ballPos.y, 0, ypos)!=0){
        ypos= ypos+round((dist(0,ballPos.y, 0, ypos))/8);
      }
      }
      if(ypos>ballPos.y){
              if(dist(0,ballPos.y, 0, ypos)!=0){
        ypos= ypos-round((dist(0,ballPos.y, 0, ypos))/8);
      }
      }
    }
    if(ypos>height-40){
      ypos=height-40;
    }
    fill(0);
    rect(570, ypos, 20,40);
  }
  void bounce(){
    int roundVal2= round(ballPos.y);
    if(((roundVal2==ypos)||(roundVal2==ypos+1)||(roundVal2==ypos+2)||(roundVal2==ypos+3)||(roundVal2==ypos+4)||(roundVal2==ypos+5)
  ||(roundVal2==ypos+6)||(roundVal2==ypos+7)||(roundVal2==ypos+8)||(roundVal2==ypos+9)||(roundVal2==ypos+10)||
  (roundVal2==ypos+11)||(roundVal2==ypos+12)||(roundVal2==ypos+13)||(roundVal2==ypos+14)||(roundVal2==ypos+15)||
  (roundVal2==ypos+16)||(roundVal2==ypos+17)||(roundVal2==ypos+18)||(roundVal2==ypos+19)||(roundVal2==ypos+20)||
  (roundVal2==ypos+21)||(roundVal2==ypos+22)||(roundVal2==ypos+23)||(roundVal2==ypos+24)||(roundVal2==ypos+25)||
  (roundVal2==ypos+26)||(roundVal2==ypos+27)||(roundVal2==ypos+28)||(roundVal2==ypos+29)||(roundVal2==ypos+30)||
  (roundVal2==ypos+31)||(roundVal2==ypos+32)||(roundVal2==ypos+33)||(roundVal2==ypos+34)||(roundVal2==ypos+35)||
  (roundVal2==ypos+36)||(roundVal2==ypos+37)||(roundVal2==ypos+38)||(roundVal2==ypos+39)||(roundVal2==ypos+40))&&(ballPos.x==568)){
    ballVel.x= ballVel.x*-1;
    ballVel.y=ballVel.y*random(0.4, 2);
 
  }
  }
}
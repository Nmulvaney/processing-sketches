class Score{
  int myScore;
  int hisScore;
  Score(int P1score, int A1score){
    myScore=P1score;
    hisScore= A1score;
  }
  void display(){
    text(myScore +":"+hisScore, (width/2)-50, height/4);
  }
  void update(){
    if(ballPos.x==0){
      
      hisScore++;
      delay(1000);
      ballPos.x=width/2;
      ballPos.y=height/2;
      ballVel.x=-4.0;
      ballVel.y=3.0;
    }
    if(ballPos.x==width){
      myScore++;
      delay(1000);
      ballPos.x= width/2;
      ballPos.y=height/4;
      ballVel.x=-4.0;
      ballVel.y= 3.0;
    }
    
    if(myScore==5){
      ballVel.x=0;
      ballVel.y=0;
      ballPos.y=height/2 + 20;
      ballPos.x= width/2 - 20;
      fill(random(255), random(255), random(255));
      text("You Win!", (width/2)-100, (height/2)-20);
    }
    if(hisScore==5){
      ballVel.x=0;
      ballVel.y=0;
       ballPos.y=height/2 + 20;
      ballPos.x= width/2 - 20;
      fill(random(255), random(255), random(255));
      text(" You Lose!", (width/2)-100, (height/2)-20);
    
    }
  }
  }
      
void setup(){
  size(300,300);
}
void draw(){
  colorMode(HSB, 360, 100, 100);
  noStroke();
  fill(random(360), 100, 100);
  rect(0,0,300,300);
  frameRate(2100000000);
//The maximum frameRate() for Processing is around 2,100,000,000 frames in a second, then it will cause an error for numbers any farther than that.  
}
// Yes you can, if you are able to create and object that moves/spins fast enough, it will seem like a blur to the human eye.
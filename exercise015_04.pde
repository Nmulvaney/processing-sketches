int distance;
void setup(){
  size(600,200);
  distance=1;
}
void draw(){
  if ((distance>50)&&(distance<450)){
  distance=distance+2;
    if (keyPressed==true){
      
      stroke(random(100), random(100), 250);
    }
    else{
      stroke(105);
  }
  }
  else if(distance<601){
   distance=distance+2;
    if(keyPressed==true){
      stroke(250, random(100), random(100));
    }
  else{
    stroke(random(100), 250, random(100));
  }
}
  line(distance, 0, distance, 200);
  }
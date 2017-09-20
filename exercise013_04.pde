int position;
void setup(){
  position= 0;
  size(300,300);
}
void draw(){
 ellipseMode(CORNERS);
  if(position<200){
   position=position+1;
    ellipse(mouseX, mouseY, position, position);
  }
  else{
  position=200;
    rect(mouseX, mouseY, position, 40);
    position=position+1;
  }
if (position>200){
  for(position=210; position<200; position=position-1){
  ellipse(mouseX, mouseY, position, position);
  }
}
  else{
    position=0;
  }
}
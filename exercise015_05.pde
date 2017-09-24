int size=1;
void setup(){
  size(100,100);
}
void draw(){
 background(150);
 if(key==CODED){
   if(keyCode==RIGHT){
     
      size=size+1;
   }
   if (keyCode==LEFT){
     size=size-1;
   }
   line(50,0, size-10, size);
   line(50, 0, size+10, size);
 }

}
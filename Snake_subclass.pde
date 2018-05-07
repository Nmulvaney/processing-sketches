  class You extends PreYou{
    
    You(){
      super();
    }
    void display(float x, float y){
    
    for (int i = 0; trail.size() > i; i++) {
      ArrayList<float[]> trail = new ArrayList();
      for (int McSize = 0; 50 > McSize; McSize++) {
      float[] a = {0,0};
      trail.add(a);
    }
      //if ( dist(tarX,tarY,x,y) <= 50) {
      //colorMode(HSB);
      ////rainbow fill
      //fill(C,255,255);
      //stroke(C,255,255);
      //C = C + 5;
      //C %= 255;
      //} 
     
        invis= get(round(trail.get(i)[0]),round(trail.get(i)[1]));
        //invisible fill
      fill(invis);
      stroke(255);
        
      
      ellipse(trail.get(i)[0],trail.get(i)[1],10,10);
      //trail itself
    }
    float[] curpos = {x,y};
    trail.add(curpos);
    trail.remove(0);
    
    }
  }
  
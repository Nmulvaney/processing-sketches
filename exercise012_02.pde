int A=1;
int B=1;
int C=1;
void setup(){
  size(1000,100);
  line(0,1,A,1);
  line(0,3,B,3);
  line(0,5,(A+B), 5);
  line(0,7,(A+B+1),7);
}
void draw(){
  
  int D= A+B;
  A=B;
  B=D;
  D=D+(A+B);
  C=C+2;
  line(0,C, D, C);
  frameRate(1);
}
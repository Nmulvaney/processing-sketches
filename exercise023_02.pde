/* Nate Mulvaney
   Dr. Van Nagy
   Intro to Coding
   11/30
   
   This sketch shows the usefulness of pushMatrix();, and popMatrix();. These small
   functions enable the user to shift back and forth between an altered grid to the 
   normal Cartesian grid. In this sketch, a Archimedian solid, in the shape of a 
   triangluar prism, is shown, and the use of the matrix ideas as well as rotate and 
   translate have caused the triangle to change positions and end up in this shape. 
   */

void setup(){
  size(1000,1000);
}
void draw(){
triangle(250, 200, 300, 300, 200, 300);
pushMatrix();
rotate(PI/3.5);
translate(60, -277.5);
triangle(250, 200, 300, 300, 200, 300);
popMatrix();
triangle(250, 400, 200, 300, 300, 300);
pushMatrix();
rotate(-PI/3.5);
translate(-250, 120);
triangle(250, 200, 300, 300, 200, 300);
popMatrix();
//triangle(100,100, 200, 200, 0,200);
}
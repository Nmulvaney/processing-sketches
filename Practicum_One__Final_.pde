/*
*
* Practicum one
* 
* Moving Color
* 
* Nate Mulvaney
* 9/20/2017
* 
* This sketch has a moving rectangle on the left side of the screen that shrinks and grows depending on the Xpos variable. On the right
* side of the rectangle is a series of random lines that range from black to white. These lines grow and recede as well depending on the 
* Xpos variable. 

*
* 
* INSTRUCTIONS
*
*/

// Stuff you need but can safely ignore right now
import processing.pdf.*;
import java.util.Calendar;

// Your variables need to be declared here
int Xpos;
int direction;
// Code you want to have run once goes here
void setup() { 
Xpos=600;
direction=1;
size(600,300);

} 

// Code you loop until you stop the sketch
void draw() { 
frameRate(100);
  if( direction==1){
  Xpos=Xpos+1;
 fill(random(255));
  line(Xpos, 0, Xpos, 300);
}
// The direction variable is ind of like an on/off switch; if it is one, the rectangle grows and the lines recede, and if it is two, 
// then the movement is towards the left. 
    if (Xpos==600){
     direction=2;
    }
    if (direction==2){
      Xpos=Xpos-1;
   stroke(random(255));
    line(Xpos, 0, Xpos, 300);
  }
  if (Xpos==0){
    direction=1;
  }
colorMode(HSB, 360, 100, 5);
  fill(random(360), 100, 5);

  noStroke();
  rect(0, 0, Xpos, 300);
  
}

  // **Leave this conditional here but maybe modify if you understand what it does**
  if (savePDF) {
    beginRecord(PDF, timestamp()+".pdf");
    noStroke();
    colorMode(HSB,360,100,100,100);
  } 


  YOUR CODE GOES HERE

  // **Leave this conditional here**
if (savePDF) {
    savePDF = false;
    endRecord();
  }
} 


// **Printing function. Leave here.**

void keyReleased() {
  if (key == 'c' || key == 'C') GenerativeDesign.saveASE(this, colors, timestamp()+".ase");
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;
  
  if (key == '1') interpolateShortest = true;
  if (key == '2') interpolateShortest = false;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

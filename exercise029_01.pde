/* Nate Mulvaney
   Dr. von Nagy
   Intro to Coding
   
   This sketch shows sin and cos values based on the Arduino. The
   sin value is shown through the line, and the cos value is shown
   through the moving rectangle. 
   */
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int potPin=0;
int ledPin=7;
void setup(){
  arduino= new Arduino(this, Arduino.list()[1], 57600);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  size(200,200);
}
void draw(){
  translate(width/2, height/2);
  //making sin and cos values
  float sin= map(arduino.analogRead(potPin), 0,1024, 0,7.5);
  float cos= map(arduino.analogRead(potPin), 0, 1024, 0,1 );
//lines and shapes to show
 line(0,0, 30*(sin(sin)), 30*(cos(sin)));
rect(70*(sin(cos)), 70*(cos(cos)), 20,10);
}
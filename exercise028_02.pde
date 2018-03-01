/* Nate Mulvaney
   Intro to Coding
   Dr. Von Nagy
   
   This sketch uses the potentiometer in the Arduino, and then I mapped those values to fit the background,
   and moves a square across the screen. 
   */

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int ledPin= 7;
int potPin= 0;
int delayVal;

void setup() {
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  println(Arduino.list()[1]);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  size(200, 200);
  noStroke();
  colorMode(HSB);

}
void draw() {
  background(0);
  //making new values that fit the screen
  int positionX= int(map(arduino.analogRead(potPin), 0, 1024, 5, 200));
  int positionY= int(map(arduino.analogRead(potPin), 0, 1024, 5, 200));
  //delay(500);
  println(positionX);
  println(positionY);
  arduino.digitalWrite(ledPin, Arduino.HIGH);
  //delay(500);
  arduino.digitalWrite(ledPin, Arduino.LOW);
  //this is the rectangle that uses the int value. 
  rect(positionX, positionY, 20, 20);
  delay(500);
}

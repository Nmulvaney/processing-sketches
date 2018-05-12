/*
Nate Mulvaney
Dr. von Nagy
Intro to Coding

This sketch has three interface options, and two of them are different. 
One of the buttons selects a random color, and the slider adjusts the brightness 
of the given color. The third button is the gullible button, and if you press it,
prints 'you are gullible' in the console. 
*/

import controlP5.*;

ControlP5 cp5button;
ControlP5 cp5button2;
ControlP5 cp5slider;
//int myColor = 255;

int hue=0;
int sliderValue = 150;

void setup() {
  colorMode(HSB);
  size(400, 600);
  noStroke();
  //new buttons and sliders
  cp5slider= new ControlP5(this);
  cp5button = new ControlP5(this);
  cp5button2= new ControlP5(this);

  cp5slider.addSlider("sliderValue")
    .setPosition(100, 160)
    .setRange(0, 255)
    //range is from 0-255
    ;

  cp5button.addButton("random_color")
   
    .setPosition(100, 100)
    .setSize(200, 19)
    ;
  cp5button2.addButton("gullible_button")
    .setPosition(100,220)
    .setSize(200,19)
    ;
}

void draw() {
  //  int brightness= sliderValue;
  fill(hue, 100, sliderValue);
  rect(0, 0, width, height);
  //fills the screen with the random color and corresponding brightness
  
}



public void random_color(int theValue) {
  println("a button event from colorA: "+theValue);
  hue = int(random(360));
  
}

public void gullible_button (){
  println("you are gullible");
}

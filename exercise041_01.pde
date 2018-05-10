import controlP5.*;

ControlP5 cp5button;
ControlP5 cp5slider;
//int myColor = 255;

int hue=0;
int sliderValue = 150;

void setup() {
  colorMode(HSB);
  size(400, 600);
  noStroke();
  cp5slider= new ControlP5(this);
  cp5button = new ControlP5(this);

  cp5slider.addSlider("sliderValue")
    .setPosition(100, 160)
    .setRange(0, 255)
    ;

  cp5button.addButton("random_color")
    // .setValue(0)
    .setPosition(100, 100)
    .setSize(200, 19)
    ;
}

void draw() {
  //  int brightness= sliderValue;
  fill(hue, 100, sliderValue);
  rect(0, 0, width, height);
  //fill(90,100,sliderValue);
  //rect(0,0,width, height/4);
  //should me myColor
}



public void random_color(int theValue) {
  println("a button event from colorA: "+theValue);
  hue = int(random(360));
}
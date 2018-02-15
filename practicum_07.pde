/*
   Nate Mulvaney
   Dr. Von Nagy
   Intro to Coding
   Practicum 7
   
   This sketch is a finger and hand painting sketch that is imported from the LEAP Motion
   device. By using hand rolls, pinches, and grabs, this effectively erases, changes weight
   color, and draws across the screen. 
   */


import de.voidplus.leapmotion.*;



LeapMotion leap;

void setup() {
  strokeWeight(5);
  size(800, 500);
  background(255);
 

  leap = new LeapMotion(this);
}




void leapOnInit() {
  // println("Leap Motion Init");
}
void leapOnConnect() {
  // println("Leap Motion Connect");
}
void leapOnFrame() {
  // println("Leap Motion Frame");
}
void leapOnDisconnect() {
  // println("Leap Motion Disconnect");
}
void leapOnExit() {
  // println("Leap Motion Exit");
}


void draw() {
//  background(255);
  // ...

  int fps = leap.getFrameRate();
  for (Hand hand : leap.getHands ()) {


    // ==================================================
    // 2. Hand

    int     handId             = hand.getId();
    PVector handPosition       = hand.getPosition();
    PVector handStabilized     = hand.getStabilizedPosition();
    PVector handDirection      = hand.getDirection();
    PVector handDynamics       = hand.getDynamics();
    float   handRoll           = hand.getRoll();
    float   handPitch          = hand.getPitch();
    float   handYaw            = hand.getYaw();
    boolean handIsLeft         = hand.isLeft();
    boolean handIsRight        = hand.isRight();
    float   handGrab           = hand.getGrabStrength();
    float   handPinch          = hand.getPinchStrength();
   

int roll= round(handRoll*10000);



    // ==================================================
    // 4. Finger

    Finger  fingerThumb        = hand.getThumb();
    // or                        hand.getFinger("thumb");
    // or                        hand.getFinger(0);

    Finger  fingerIndex        = hand.getIndexFinger();
    // or                        hand.getFinger("index");
    // or                        hand.getFinger(1);

    Finger  fingerMiddle       = hand.getMiddleFinger();
    // or                        hand.getFinger("middle");
    // or                        hand.getFinger(2);

    Finger  fingerRing         = hand.getRingFinger();
    // or                        hand.getFinger("ring");
    // or                        hand.getFinger(3);

    Finger  fingerPink         = hand.getPinkyFinger();
    // or                        hand.getFinger("pinky");
    // or                        hand.getFinger(4);


    for (Finger finger : hand.getFingers()) {
      // or              hand.getOutstretchedFingers();
      // or              hand.getOutstretchedFingersByAngle();

      int     fingerId         = finger.getId();
      PVector fingerPosition   = finger.getPosition();
      PVector fingerStabilized = finger.getStabilizedPosition();
      PVector fingerVelocity   = finger.getVelocity();
      PVector fingerDirection  = finger.getDirection();
      float   fingerTime       = finger.getTimeVisible();
      println(handPinch);
      //making the grab value 0-100
      int grab= round(handGrab*100);
      //making the pinch value 0-100
 int pinch= round(handPinch*100);
 println(grab);
 //if the pinch value is in the top 25 percent, then it leaves a colored trail for all fingers
  if((pinch<100)&&(pinch>75)){
        stroke(random(200), random(200), random(200));
        point(fingerPosition.x, fingerPosition.y);
      }
      //the right hand clenched makes the weight of the lines larger
      if((grab>90)&&(hand.isRight()==true)){
        strokeWeight(20);
      }
      //the left hand clenched makes the weight of the lines smaller
      if((grab>90)&&(hand.isLeft()==true)){
        strokeWeight(5);
      }
      
    
      switch(finger.getType()) {
      case 0:
        // System.out.println("thumb");
        break;
      case 1:
  //if the hand rolls to a certain degree, it resets the background
      if((roll<9000)&&(roll<-9000)){
      
      background(255);
      }
      else{
      
    
       stroke(0);
       point(fingerPosition.x, fingerPosition.y);
      }
    
       
      }


     

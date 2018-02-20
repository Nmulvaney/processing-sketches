import de.voidplus.leapmotion.*;

LeapMotion leap;

void setup() {
  strokeWeight(5);
  size(800, 500);
  background(255);
  // ...

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
  background(255);
  // ...

  int fps = leap.getFrameRate();
  for (Hand hand : leap.getHands ()) {

    float   handPitch          = hand.getPitch();
    float   handYaw            = hand.getYaw();
   
int pitch= round(handPitch*(1));
int yaw= round(handYaw);
println(pitch);
if((pitch<=20)&&(pitch>=-20)){
  background(50,200,200);
}
if((yaw>=20)&&(yaw<=-20)){
  background(200,50,200);
}

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

    
      switch(finger.getType()) {
      case 0:
        // System.out.println("thumb");
        break;
      case 1:
  
     
        break;
      case 2:
        // System.out.println("middle");
        break;
      case 3:
        // System.out.println("ring");
        break;
      case 4:
        // System.out.println("pinky");
        break;
      }


   
}
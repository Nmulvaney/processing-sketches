/* Nate Mulvaney
   Dr. Von Nagy
   Intro to Coding
   
   This sketch shows the points, assists, and three point shots made between the 
   Cleveland Caveliers and the Golden State Warriors. The graphs are the stats for
   each of the seven games, and the bar graphs are for the total in that stat. 
   */

String points= "Points Games 1-7";
String assists= "Assists Games 1-7";
String threePoint= "3P Fgs made Games 1-7";
String total= "Total";
String title= "Cavs vs. Warriors 2016 Finals Stats";
String yaxis= "Statistics of Games";
String pointTotalc= " 704";
String pointTotalw= " 699";
String assistTotalc= " 92";
String assistTotalw= " 124";
String threec= " 53";
String threew= " 94";
String paxis= " 100";
String aaxis= " 15";
String threeaxis= " 10";
void setup(){
  size(1000,600);
} void draw(){
  strokeWeight(7);
  line(100,50,100,500);
  line(100,500,900,500);
  line(375, 50, 375, 500);
  line(625, 50, 625, 500);
  line(315, 50, 315, 500);
  line(565, 50, 565, 500);
  line(815, 50, 815, 500);
  line(98, 400, 102, 400);
  line(372, 455, 378, 455);
  line(622, 470, 628, 470);
 
  // Graph for cavs points
  
  createShape();
  beginShape();
  strokeWeight(1);
  stroke(153,0,0);
  fill(255,153,153, 75);
  vertex( 130, 411);
  vertex(160, 423);
  vertex(190, 380);
  vertex(220, 403);
  vertex(250, 388);
  vertex(280, 385);
  vertex(310, 407);
  vertex(310, 500);
  vertex(100,500);
  endShape(CLOSE);
  
  // Graph for warriors points
  
  createShape();
  beginShape();
  stroke(0,0,153);
  fill(102,178,205, 75);
  vertex(130, 396);
  vertex(160, 390);
  vertex(190, 410);
  vertex(220, 392);
  vertex(250, 403);
  vertex(280, 399);
  vertex(310, 411);
  vertex(310, 500);
  vertex(100,500);
  endShape();
  
  // totals for points
  
 noStroke();
  fill(153,0,0);
  rect(320, 233,20, 267);
  fill(0,0,153);
  rect(345, 234.6, 20, 265.4);
 
 //Graph for cavs assists
 
 createShape();
 beginShape();
 stroke(153, 0, 0);
 fill(255, 153, 153, 75);
 vertex(380, 466);
 vertex(410,470);
 vertex(440,454);
 vertex(470, 470);
 vertex(500, 470);
 vertex(530, 452);
 vertex(560, 466);
 vertex(560, 500);
 vertex(380, 500);
 endShape(CLOSE);
 
 //Graph for warriors assists
 
 createShape();
 beginShape();
 stroke(0,0,153);
 fill(102, 178, 205, 75);
 vertex(380, 442);
 vertex(410, 448);
 vertex(440, 458);
 vertex(470, 454);
 vertex(500, 464);
 vertex(530, 462);
 vertex(560, 456);
 vertex(560, 500);
 vertex(380, 500);
  endShape(CLOSE);
  
  //totals for assists
  
 noStroke();
  fill(153, 0, 0);
  rect(570, 316,20 ,184 );
  fill(0,0,153);
  rect(595, 252, 20, 248);
 
  //three pointers made graph for cavs
  
  createShape();
  beginShape();
  stroke(153,0,0);
  fill(255, 153, 153, 75);
  vertex(630,479);
  vertex(660,485);
  vertex(690, 473);
  vertex(720, 482);
  vertex(750, 470);
  vertex(780, 470);
  vertex(810, 482);
  vertex(810, 500);
  vertex(630, 500);
  endShape(CLOSE);
  
  //three pointers made graph for warriors
  
  createShape();
  beginShape();
  stroke(0,0,153);
  fill(102, 178, 205, 75);
  vertex(630, 473);
  vertex(660, 455);
  vertex(690, 473);
  vertex(720, 449);
  vertex(750,458);
  vertex(780,455);
  vertex(810, 455);
  vertex(810, 500);
  vertex(630, 500);
  endShape(CLOSE);
  
  //totals for three pointers made
  
  noStroke();
  fill(153,0,0);
  rect( 820, 282, 20, 218);
  fill(0,0,153);
  rect( 850, 159, 20, 341);
  fill(0);
  
  //fine tuning, text and nu,ber values below
  
  text(points, 150, 530);
  text(assists, 440,530);
  text(threePoint, 650,530);
  text(total, 575, 200);
  text(total, 325, 200);
  text(total, 830, 120);
  text(paxis, 65, 400);
  text(aaxis, 385, 430);
  text(threeaxis, 635, 450);
  text(threec, 820, 270);
 text(threew, 850, 150);
 text(assistTotalc, 570, 300);
 text(assistTotalw, 590, 250);
 text(pointTotalc, 315,225);
 text(pointTotalw,340,230);
  textSize(30);
  text(title, 300, 30);
  pushMatrix();
  translate(100,0);
  textSize(20);
  rotate(-PI/2);
  text(yaxis, -300,-20);
  popMatrix();
  textSize(12);
}
  
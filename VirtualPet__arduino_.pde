import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
  size(400,400);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
void draw(){
  float y = arduino.analogRead(5) / 3;
  System.out.println(y);
  
  background(135,255,0);
  noStroke();
  //body
  fill(52,116,0);
  ellipse(200,185,60,60);
  fill(52,170,0);
  ellipse(200,185,40,40);
  
  fill(52,116,0);
  ellipse(200,150,100,75);
  ellipse(170,120,45,45);
  ellipse(230,120,45,45);
  
  
  //legs + arms -- SWIM :D
  if(y<3){
    fill(68,100,255);
    rect(170,220,10,40);
    rect(220,220,10,40);
  }
  
  fill(52,116,0);
  triangle(185,200,155,200-y,175-(y-4),220);
  triangle(215,200,245,200-y,225+(y-4),220);
  
  ellipse(170,185,30,20);
  ellipse(230,185,30,20);
  
  //eyes
  fill(255,255,255);
  ellipse(170,120,30,30);
  ellipse(230,120,30,30);
  fill(0,0,0);
  ellipse(170,120,20,20);
  ellipse(230,120,20,20);
  
  //smile
  fill(0,0,0);
  arc(200,150,20,20,0,PI);
  
  //fyi mr chan i'm not an artist :D
}

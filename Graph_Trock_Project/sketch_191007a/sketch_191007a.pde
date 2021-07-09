boolean day;
boolean text;
boolean doorcode;
PImage photo;
PImage bah;
int bahx;
boolean bird;
void setup(){
  size(800,600);
  day = true;
  text = true;
  bird = true;
  photo = loadImage("melonman.jpg");
  bah = loadImage("Bird.png");
}

void draw(){
  if (day == true) {
    if(bird)bahx = int( random( 0,500) );
    //draw daytime scene
    noStroke();
    background(#2EC4F0); //pretty light blue sky
    fill(#FCF16E);
    ellipse(200,100,70,70); //sun
    fill(#469046);
    rect(0,450,width,height);
    bah.resize(200,200);
    image(bah, bahx, 200);
    text( " Press the button A to make the bird move around!", 300,100);
    text( " Then Go to night to see Mr. MelonHead",300, 125);

  }
 
  else {
    //draw nighttime scene
    noStroke();
    background(#4A4C50); //pretty light blue sky
    fill(#C1C4A8);
    ellipse(400,100,70,70); //sun
    fill(#132C11);
    rect(0,450,width,height);
    fill(#FFFFFF);
    rect(350,300,100,150);
    fill(#8E7CFA);
    ellipse(435,375,30,30);
    text("\n OPEN \n THE \n DOOR!", 352.5,325);
  }
  
  //Draw code scene
  if(doorcode && !day){
    fill(255);
    quad(275,320,350,300,350,450,275,470);
    rect(350,300,100,150);
    stroke(3);
    line(350,300,350,450);
    noStroke();
    fill(#8E7CFA);
    ellipse(295,395,30,28);
    photo.resize(100,150);
    image(photo, 350, 300);
    fill(255);
    text("CLOSE THE \n DOOR!", 352.5,325);
  }
  strokeWeight(1);
  fill(255);
  rect(600,510,70,30);
  rect(700,510,70,30);
  fill(0);
  textSize(18);
  text("Day",617,530);
  text("Night",712,530);
  
  if (mouseX > 600 && mouseX < 670 && mouseY > 510 && mouseY < 540) {
    fill(0);
    rect(600,510,70,30);
    fill(255);
    text("Day",617,530);
  }else if (mouseX > 700 && mouseX < 770 && mouseY > 510 && mouseY < 540){
    fill(0);
    rect(700,510,70,30);
    fill(255);
    text("Night",712,530);
  }
  bird=false;
}

void mousePressed(){
  println(mouseX + "," + mouseY);
  if (mouseX > 600 && mouseX < 670 && mouseY > 510 && mouseY < 540) {
    day = true;
    doorcode = false;
  }
  else if (mouseX > 700 && mouseX < 770 && mouseY > 510 && mouseY < 540){
    day = false; 
    
  }
  if (mouseX > 350 && mouseX < 450 && mouseY > 300 && mouseY < 450 && !day){
   doorcode = true;
  }
    if (mouseX > 275 && mouseX < 350 && mouseY > 320 && mouseY < 450 && !day){
   doorcode = false;
  }
}
void keyPressed () {
  println(keyCode);
  println(key);
  if (keyCode == 65) {
    bird=true;
  }
}

boolean begin = true;




void setup() {
  size(800,600);
  background(0);
}

void draw() {
  
  
  if (begin) {
  textSize(25);
  text("Pick Your Favorite baseball Player!", 200,250); 
  fill(255);
  rect(300, 350, 120,30);
  fill(0);
  text("Begin", 310,375);
  if (mouseX > 300 && mouseX < 420 && mouseY > 350 && mouseY < 380) { 
      fill(0);
      rect(300, 350, 120,30);
      fill(255);
      text( "Begin", 310, 375);
    } else if (mouseX > 300 && mouseX < 420 && mouseY > 350 && mouseY < 380) {
      fill(0);
      rect(300, 350, 120,30);
      fill(255);
      text( "Begin", 310, 375);
    }
  }
  
}

void bracket(){
  
  
}

void mousePressed() {
  if (mouseX > 300 && mouseX < 420 && mouseY > 350 && mouseY < 380) {
    begin = false;
    bracket();
  }
}

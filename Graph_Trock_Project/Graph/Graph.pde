Plot plot;

void setup() {
  size(1000,800);
  plot = new Plot();

}


void draw() {
  background(#E5DAC7);
  plot.display();
  fill(0);
  text("Press A to Increase point size and Press B to Decrease point Size", 200,50);
}


void mouseReleased() {
  plot.addPoint(mouseX, mouseY);
  
}

void keyPressed() {
 if (keyCode == 65){
  plot.increasePointSize(); 
 }
 
 if (keyCode == 66) {
  plot.decreasePointSize(); 
 }
 
}

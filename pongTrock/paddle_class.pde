class Paddle {
  float x, y, w, h;
  
  Paddle() {
    w = 120;
    x = width/2 - w/2;
    y = height - 25 - 15;
    h = 25;
    
    
  }
 
  void display() {
    fill(0);
    rect(x, y, w, h);  
  }
  
  
  
  void moveLeft() {
    x = x - 20;
  }
  
  void moveRight() {
    x = x + 20;   
  }
    
}
  
  
  
  
  
  
  
  
  
  

class Paddle {
  float x, y, w, h;
  
  Paddle() {
    w = 80;
    x = width/2 - w/2;
    y = height - 25 - 15;
    h = 10;
    
    
  }
 
  void display() {
    fill(0);
    rect(x, y, w, h);  
  }
  
  
  
  void moveLeft() {
    x = x - 40;
    if(x<-40){
      x=width;
    }
  }
  
  void moveRight() {
    x = x + 40;
    if(x+40>width){
      x=-40;
    }
  }
    
}
  
  
  
  
  
  
  
  
  
  

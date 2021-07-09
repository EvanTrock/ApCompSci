
class Ball {
  //properties of a ball
  color clr;
  float x, y, r, vx, vy; 
  float elas;  //the elasticity / bounciness of the ball 
  
  Ball(float r, color clr) {
    this.x = random(100,width-100);
    this.y = random(100,height-100);
    this.vx = 2;   //LATER I want to make these velocities random
    this.vy = -1;
    this.r = r;
    this.clr = clr;   
  }

  void display() {
    noStroke();
    fill(clr);
    ellipse(x,y,2*r,2*r);   
  }
  
  void move() {
    x = x + vx;
    y = y + vy;  
  }
  
  void checkBounce() {
    if (x < 0 + r || x > width - r) vx = -vx;
    if (y < 0 + r ) vy = -vy;
  }
  
}

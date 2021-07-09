
class Ball {
  //properties of a ball
  color clr;
  float x, y, r, vx, vy; 
  float elas;  //the elasticity / bounciness of the ball 
  int collisions;
  
  Ball(float r, color clr) {
    this.x = random(100,width-100);
    this.y = random(100,height-100);
    this.vx = random(1,3);   //LATER I want to make these velocities random
    this.vy = random(-3,-1);
    this.r = r;
    this.clr = clr;  
    collisions=0;
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
    if (x < 0 + r || x > width - r){ 
    vx = -vx;
    collisions=collisions+1;
    }
    if (y < 0 + r ){
      vy = -vy;
      collisions=collisions+1;
    }
  }
  
}

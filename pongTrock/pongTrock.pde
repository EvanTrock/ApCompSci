Ball b1;
Ball b2;
Ball b3;
Paddle p;


void setup() {
  size(800,600);
  b1 = new Ball( 15, color(255,0,0) );
  b2 = new Ball( 10, color(0,0,255) );
  b3 = new Ball( 25, color(0,255,255) );
  
  p = new Paddle();
}


void draw() {
  background(255);
  b1.display();
  //b2.display();
  //b3.display();
  b1.move();
  //b2.move();
  //b3.move();
  b1.checkBounce();
  //b2.checkBounce();
  //b3.checkBounce();
  
  p.display();
  
  if (collideCircleRect(b1.x, b1.y, b1.r, p.x, p.y, p.w, p.h) == true) {
    println("BOOM!");     
  }
  
  
  
}

void keyPressed() {
  if (keyCode == LEFT) {
    p.moveLeft();
  }
  
  else if (keyCode == RIGHT) {
    p.moveRight();
  } 
}


// CIRCLE/RECTANGLE from Jeff Thompson http://www.jeffreythompson.org/collision-detection/
boolean collideCircleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // test left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  return false;
}






//collision detection
//https://happycoding.io/tutorials/processing/collision-detection
//http://www.jeffreythompson.org/collision-detection/

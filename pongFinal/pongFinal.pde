Ball b1;
Ball b2;
Ball b3;
Paddle p;
Ball[] balls = new Ball[3];
int score = 0;
boolean gameOn = true;
int timer;

void setup() {
  size(800, 600);
  b1 = new Ball( 15, color(255, 0, 0) );
  b2 = new Ball( 10, color(0, 0, 255) );
  b3 = new Ball( 25, color(0, 255, 255) );
  balls[0] = b1;
  balls[1]=b2;
  balls[2]=b3;
  p = new Paddle();
  frameCount=60;
  if (!gameOn) {
    frameCount = 0;
  }
}


void draw() {
  background(255);
  timer = frameCount/60;
  if (gameOn) {
    text("Timer: " + timer, 50, 80);
    fill(0);
    text("Score: " + score, 50, 50);
    text("Collisions: " + b1.collisions, 50, 110);
    text("Collisions: " + b2.collisions, 50, 140);
    text("Collisions: " + b3.collisions, 50, 170);
    b1.display();
    b2.display();
    b3.display();
    b1.move();
    b2.move();
    b3.move();
    b1.checkBounce();
    b2.checkBounce();
    b3.checkBounce();

    p.display();

    if (collideCircleRect(b1.x, b1.y, b1.r, p.x, p.y, p.w, p.h) == true) {  
      b1.vy=b1.vy * -1.2;
      score = score+1;
    }
    if (collideCircleRect(b2.x, b2.y, b2.r, p.x, p.y, p.w, p.h) == true) {  
      b2.vy=b2.vy * -1.15;
      score = score+1;
    }
    if (collideCircleRect(b3.x, b3.y, b3.r, p.x, p.y, p.w, p.h) == true) {  
      b3.vy=b3.vy * -1.1;
      score = score+1;
    }
  }


  if (b1.y > height && b2.y>height && b3.y>height) {
    gameOn = false;
  }

  if (gameOn==false) {
    text("game over", width/2, height/2);
    text("Score: " + score, width/2, height/2 + 20);
    text("Collisions: " + b1.collisions, width/2, height/2 + 40);
    text("Collisions: " +  b2.collisions, width/2, height/2 + 60);
    text("Collisions: " +  b3.collisions, width/2, height/2 + 80);
  }
}

void keyPressed( ) {
  keyFunction(keyCode);
  keyFunction(1);
}

void keyFunction(int x) {
  if (x == LEFT) {
    p.moveLeft();
  } else if (x == RIGHT) {
    p.moveRight();
  } else if (key == 's') {
    String data = score+" "+timer+" "+b1.collisions+" "+b2.collisions+" "+b3.collisions+" "+p.x+" "+p.y+" "+b1.x+" "+b1.y+" "+b2.x+" "+b2.y+" "+b3.x+" "+b3.y;
    String[] dataList = split(data, " ");
    saveStrings("data.txt", dataList);
  } else if (key == 'l') {
    String[] dataList = loadStrings("data.txt");
    score = Integer.parseInt(dataList[0]);
    timer = Integer.parseInt(dataList[1]);
    for(int i =0; i < balls.length; i++) {
      for(int n =2; n <5; n++) {
    balls[i].collisions = Integer.parseInt(dataList[n]);
      }
    }
    p.x = Float.parseFloat(dataList[5]);
    p.y = Float.parseFloat(dataList[6]);
    b1.x = Float.parseFloat(dataList[7]);
    b1.y = Float.parseFloat(dataList[8]);
    b2.x = Float.parseFloat(dataList[9]);
    b2.y = Float.parseFloat(dataList[10]);
    b3.x = Float.parseFloat(dataList[11]);
    b3.y = Float.parseFloat(dataList[12]);
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

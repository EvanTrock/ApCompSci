star [] stars;
int x, y, n;
int m = 0;
boolean Door;

void setup() {
  size(800, 600);
  rect(0, 0, 800, 600);
  background(0);  


  n = 100;
  stars = new star[n];

  //populate star array
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new star();
  }
}

void draw() {

  fill(255);

  m++;
  if (m==800) m=0;
  background(0);
  ellipse(m, 0, 100, 100);

  noStroke();
  fill(0, 255, 0);
  rect(0, 550, width, 50);

  if (Door) {
    line(630, 550, 630, 549);
    fill(0, 0, 255);
    rect(550, 450, 150, 100);
    stroke(0);
    line(600, 475, 600, 549);
    triangle(550, 450, 625, 400, 700, 450 ) ;
    fill(255);
    ellipse(630, 500, 40, 40 );
    line(630, 550, 630, 549);
    fill(0);
    rect(625, 495, 2, 2);
    rect(635, 495, 2, 2);
    ellipse( 630, 505, 4, 4);
    fill(255);
    rect( 625, 450, 100, 30);
    fill(0);
    text("This is my Tent!", 630, 465);
  } else {
    fill(0, 0, 255);
    rect(550, 450, 150, 100);
    stroke(0);
    rect(600, 475, 50, 74);
    triangle(550, 450, 625, 400, 700, 450 ) ;
    fill(0);
    rect( 700, 450, 50, 50);
  }

  fill(255);
  rect(600, 570, 70, 30);
  fill(0);
  text("Open", 617, 590);

  fill(255);
  rect(700, 570, 70, 30);
  fill(0);
  text("Close", 712, 590);

  if (mouseX > 600 && mouseX < 670 && mouseY > 570 && mouseY < 600) {
    fill(0);
    rect(600, 570, 70, 30);
    fill(255);
    text("Open", 617, 590);
  } else if (mouseX > 700 && mouseX < 770 && mouseY > 570 && mouseY < 600) {
    fill(0);
    rect(700, 570, 70, 30);
    fill(255);
    text("Close", 712, 590);
  }


  //display star array
  for (int j = 0; j<100; j++) {
    stars[j].display();
  }
}




void mousePressed() {
  println(mouseX + "," + mouseY);
  if (mouseX > 600 && mouseX < 670 && mouseY > 570 && mouseY < 600) {
    Door= true;
  } else if (mouseX > 700 && mouseX < 770 && mouseY > 570 && mouseY < 600) {
    Door = false;
  }
}

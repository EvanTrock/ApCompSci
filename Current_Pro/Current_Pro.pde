String filePath;
PImage myImage;
boolean buttonReset = true;
boolean buttonDancing = false;
float r=0;
float g=0;
float b=0;
int dimension = 0; //total number of pixels in the image

void setup() {
  size(500, 500);
}
void keyPressed() {
  selectInput("Select a file to process:", "fileSelected");
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } 
  else {
    filePath =selection.getAbsolutePath();
    myImage = loadImage(filePath);
    dimension= myImage.width * myImage.height;
  }
}


void draw() {
  if (myImage == null) {
    text( "Press Enter to Select a file", 60, 60);
  } else {
    myImage.loadPixels();  

    if (buttonReset == true) {
      image(myImage, 0, 0, 500, 300);
      buttonReset=false;
    }
    
    if (buttonDancing == true) {
      fill(255);
      rect(0, 0, 500, 300);
      
      for (int i = 0; i < 1000; i += 1) {
        int x = int(random(myImage.width));
        int y = int(random(myImage.height));
        int loc = x + y*myImage.width;

        loadPixels();
        
        r = red(myImage.pixels[loc]);
        g = green(myImage.pixels[loc]);
        b = blue(myImage.pixels[loc]);
        noStroke();

        fill(r, g, b, 100);
        ellipse((x*500)/myImage.width, (y*300)/myImage.height, 5, 5);
        
      }
    }

    fill(255);
    rect(50, 370, 120, 30);
    rect(200, 370, 120, 30);
    rect(200, 430, 120, 30);
    rect(350, 370, 120, 30);
    fill(0);
    text( "Pixelize", 60, 385);
    text( "Pointilize ", 210, 385);
    text( "Star Trek Transporter", 355, 385);
    text( "Reset", 210, 445);

    if (mouseX > 50 && mouseX < 170 && mouseY > 370 && mouseY < 400) { 
      fill(0);
      rect(50, 370, 120, 30);
      fill(255);
      text( "Pixelize", 60, 385);
    } else if (mouseX > 210 && mouseX < 330 && mouseY > 370 && mouseY < 400) {
      fill(0);
      rect(200, 370, 120, 30);
      fill(255);
      text( "Pointilize", 210, 385);
    } else if (mouseX > 350 && mouseX < 470 && mouseY > 370 && mouseY < 400) {
      fill(0);
      rect(350, 370, 120, 30);
      fill(255);
      text( "Star Trek Transporter ", 355, 385);
    } else if (mouseX > 210 && mouseX < 330 && mouseY > 430 && mouseY < 460) {
      fill(0);
      rect(200, 430, 120, 30);
      fill(255);
      text( "Reset", 210, 445);
    }
  }
}

void Point(int pointSize) {
  if(pointSize == 0){
   return; 
  }
  fill(255);
  if (myImage == null) {
   return;  
  }

  int widthIncrement = myImage.width / 100;
  int heightIncrement = myImage.height / 60;
  rect(0, 0, 500, 300);
  for (int y = 0; y < myImage.height; y += heightIncrement) {
    for (int x = 0; x < myImage.width; x += widthIncrement) {
      int i=x + (y*myImage.width);
      r = red(myImage.pixels[i]);
      g = green(myImage.pixels[i]);
      b = blue(myImage.pixels[i]);
      noStroke();
      fill(r, g, b, 100);
      ellipse((x*500)/myImage.width, (y*300)/myImage.height, pointSize, pointSize);
    }
  } 
}


void Pixel() {
  fill(255);
  rect(0, 0, 500, 300);
  for (int i = 0; i < dimension; i += 1) { 
    if (i % 10==0) {
      r = red(myImage.pixels[i]);
      g = green(myImage.pixels[i]);
      b = blue(myImage.pixels[i]);
    } 
    else {
      myImage.pixels[i] = color(r, g, b);
    }
  } 
  myImage.updatePixels();
  image(myImage, 0, 0, 500, 300);
}



void mousePressed() {
  if (mouseX > 50 && mouseX < 170 && mouseY > 370 && mouseY < 400) {
    buttonDancing = false;
    Pixel();
  } else if (mouseX > 200 && mouseX < 320 && mouseY > 370 && mouseY < 400) {
    buttonDancing = false;
    Point(5);
    Point(0);
  } else if (mouseX > 350 && mouseX < 470 && mouseY > 370 && mouseY < 400) {
    buttonDancing = true;
  } else if (mouseX > 200 && mouseX < 320 && mouseY > 430 && mouseY < 460) {
    myImage = loadImage(filePath);
    buttonReset = true;
    buttonDancing = false;
  }
}

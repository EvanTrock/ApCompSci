class Plot {
 
  ArrayList<Point> points;
  int pointSize;
  color pointColor;
  
  Plot() {
    pointSize = 4;
    pointColor = color(0,0,255);
    points = new ArrayList<Point>();
  }
  
  void display() {
    //figure out how to draw both the points and some axes
    //draw axes
    strokeWeight(3);
    stroke(0);
    line(20, height-20, 20, 20);
    line(20, height-20, width-20, height-20);
    
    //draw the points
    //for (int i = 0; i<points.size(); i++) {
    //  //draw a circle for each point
    //}
    
    for (Point p: points) {
      //draw each p
      noStroke();
      fill(pointColor);
      ellipse(p.x, p.y, pointSize, pointSize);
    }
    
    
  }
  
  void addPoint(int x, int y) {
    // add the new point to the array list of points
    points.add(new Point(x, y));
  }
  
  void increasePointSize() {
    pointSize = 10;
  }
  
  void decreasePointSize() {
    pointSize = 2;
  }
  
  
  
  
  
  
}

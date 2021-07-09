class star {
  int x, y;

  star() {
    x = int (random(0, 800));
    y = int (random(0, 300));
  }

  void display() {
    noStroke();
    fill (255);
    rect(x, y, 2, 2);
  }
}

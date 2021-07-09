String [] place= { "Park", "Arcade", "Golf Course", "Play"} ;
{
  int PL = int(random(0, place.length));
  println( place[PL]);
}
String [] people= {"Family", "Friends", "Brother", "Sister"}; 
{
  int PE =int(random(0, people.length));
  println( people[PE]);
}
String [] food= { "Burgers", "Chicken", "Burritos", "Glizzys"};
{
  int f = int(random(0, food.length));
  println( food[f]);
}
String [] drink= { "Sprite", "Water", "Root Beer", "Seltzer"};
{
  int DR= int(random(0, drink.length));
  println( drink[DR]);
}
String [] desert= { "Ice Cream", "Milk Shakes", "Churros", "Soft Serve"};
{
  int DE = int(random(0, desert.length));
  println( desert[DE]);
}
String [] place2= { "Pool", "Beach", "Club", "Basketball Court"};
{
  int pl2 = int(random(0, place2.length));
  println( place2[pl2]);
}
String [] des= { "Hot", "Windy", "Cold", "Dry"};
{
  int descrip= int(random(0, des.length));
  println( des[descrip]);
}
String [] food2= { "Burgers", "Chicken", "Burritos", "Glizzys"};
{
  int f2 = int(random(0, food.length));
  println( food2[f2]);
}
String [] adj= { "Fun", "Bad", "Nice", "Exciting"};
{
  int a = int(random(0, adj.length));
  println( adj[a]);
}

void setup() {
  size(800, 600);
  background(255);
}


void draw() {
  fill(0);
  textSize(25);
  text("I went to the ________ with my _________. After we left, we ", 50, 25);
  text("ate some ________ and drank _________. After we finished our ", 25, 125);
  text("food, we wanted some desert so we got ________. Then, we", 50, 225);
  text("went to the ________. It was really nice for a ________ ", 50, 325);
  text("Summer Day. After, it was dinner time so for dinner, we had ", 50, 425);
  text(" ________.All in all, it was a Really _______ day! ", 50, 525);

  fill (255);
  rect(200, 40, 110, 40);
  fill(0);
  text("Random", 205, 70);

  fill (255);
  rect(420, 40, 110, 40);
  fill(0);
  text("Random", 425, 70);

  fill (255);
  rect(200, 40, 110, 40);
  fill(0);
  text("Random", 205, 70);


  if (mouseX > 200 && mouseX < 310 && mouseY > 40 && mouseY < 80) {
    fill (0);
    rect(200, 40, 110, 40);
    fill(255);
    text("Random", 205, 70);
  } 
  if (mouseX > 420 && mouseX < 530 && mouseY > 40 && mouseY < 80) {
    fill (0);
    rect(420, 40, 110, 40);
    fill(255);
    text("Random", 425, 70);
  }
  
}

  String [] sport = {"Golf", "Tennis", "Football", "Soccer", "Baseball", "Hockey", "Field Hockey", "Basketball", 
"Volleyball", "Softball", "Running", "biking", "swimming", "water polo", "Lacrosse"};

 String [] noun = {"Car", "House", "Shoe", "Pencil", "Glasses", "Computer", "Toilet Paper", "Towel", "Headphones",
"Zipper",   "Person", "Woman", "Man", "Camera", "TV"};

 String [] AV = {"Drank", "Ate", "Studied", "Slept", "Swung", "Washed", "Played", "Went", "Painted",
"Drove", "Walked", "Ran", "Biked", "Jumped", "Read"};

 String [] adj = {"Great", "Smelly", "Crooked", "Neat", "Cool", "Colorful", "Slimy", "Sticky", "Slippery",
"Wet", "stupid", "Bright", "Smart", "Loud", "Quiet"};

int n;
int i;
String tmp;
  
void setup(){
  String newString1 = MadLibReplace("I *AV* to the *noun* and *AV* in the pool",0);
  String newString2= MadLibReplace("Then, I *AV* *sport*. It was *adj*",1);
  String newString3= MadLibReplace("We also *AV* *noun*. That was *adj*.",2);
  String newString4= MadLibReplace("Finally, I went *AV*, It was a *adj* day",3);
  
  
  println(newString1);
  println(newString2);
  println(newString3);
  println(newString4);
  
  
}

String MadLibReplace(String str,int x) {
  if(x == 0){
    while (str.indexOf("*AV*") > -1) {
      n = str.indexOf("*AV*");
      tmp = str.substring(0, n);
      i = int(random(0,14));
      tmp = tmp + AV[i];    
      tmp = tmp + str.substring(n+4);  
      str = str.substring(0, n) + AV[i] + str.substring(n+4);
    }
  }
  if(x ==1){
    while (str.indexOf("*sport*") > -1) {
      n = str.indexOf("*sport*");
      tmp = str.substring(0, n);
      i = int(random(0,14));
      tmp = tmp + sport[i];    
      tmp = tmp + str.substring(n+7);  
      str = str.substring(0, n) + sport[i] + str.substring(n+7);
    }
  } 
   if(x == 2){
    while (str.indexOf("*noun*") > -1) {
      n = str.indexOf("*noun*");
      tmp = str.substring(0, n);
      i = int(random(0,14));
      tmp = tmp + noun[i];    
      tmp = tmp + str.substring(n+6);  
      str = str.substring(0, n) + noun[i] + str.substring(n+6);
    }
   } 
   if (x == 3) { 
    while (str.indexOf("*adj*") > -1) {
      n = str.indexOf("*adj*");
      tmp = str.substring(0, n);
      i = int(random(0,14));
      tmp = tmp + adj[i];    
      tmp = tmp + str.substring(n+5);  
      str = str.substring(0, n) + adj[i] + str.substring(n+5);
    }
   }
  return tmp;
}

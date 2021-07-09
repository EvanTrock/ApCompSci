int x=0;

void setup() {
  //CALL your 5 functions (passing in necessary arguments) to demonstrate their usage here
  //if there is a return value, "catch" it (assign it to a variable) and print/display the variable
  Not();
  String rWord = word();
  println (rWord);
  
  boolean Rets = Py( 2,1);
  println(Rets);
  
  
  
   
  
  
}


//function definitions
 
//1. A function that takes no arguments, changes a global variable, and returns nothing
void Not() {
  x=2;
  
}



//2. A function that takes no arguments but returns a String
String word(){
  String [] Let = {"A","B","C","D","E"};
  int z = int(random(0, Let.length));
  return Let[z];
  
}



//3. A function that takes two integer arguments and returns a boolean
boolean Py(int x, int y){
  if (x>y){
    return true;  
  }
  else{
   return false; 
    
  }
}



//4. A function that takes as arguments: a String and an integer and an array of characters; and returns a String
String TTT( String st, int o, char[] Xe){
  if( o>0 && 0< Xe.length){
    st += Xe[o];
    
  }
  return st;
  
}



//5. A function that takes an integer and returns an array of floats
float [] randomNum(int a){
  float [] nums = new float [a];
  for(int i=0; i<a; i++){
    nums[i] = random(0,500);
  }
  return nums;
  
  
}

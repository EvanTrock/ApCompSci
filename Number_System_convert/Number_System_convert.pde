int  addedValue;
String result= "";
String currentDigit;

void setup() {

  convert(365, 20); //--> 111
}

void convert(int baseTenNumber, int nBase) {

  while (baseTenNumber >= 1) {
    addedValue = baseTenNumber % nBase;
    if (addedValue>=10) {
/*      if (addedValue == 10) {result = "A" + result;}
      if (addedValue == 11) {result = "B" + result;}
      if (addedValue == 12) {result = "C" + result;}
      if (addedValue == 13) {result = "D" + result;}
      if (addedValue == 14) {result = "E" + result;}
      if (addedValue == 15) {result = "F" + result;} */
      result = char(addedValue+55) + result ;
    }
    else {result = addedValue + result;}
    
    baseTenNumber = baseTenNumber / nBase;
  
  }
  println (result);
}

int [] nums = {2,5,7,18,29,33,44,68};


void setup() {
}

void draw() {
}



int linearSearch(int target, int [] dataSet) {

  for (int i=0; i<dataSet.length; i++) {
    if (dataSet[i] == target) return i;
  }

  return -1;
}

int binarySearch(int target, int [] dataSet) {
  int first = 0;
  int last = dataSet.length - 1;
  int mid =( first + last) /2;
  int location = -1;

  while (first <= last) {
    if (dataSet[mid] == target) {
      location = mid;
      break;
    } else if (dataSet[mid] < target) first = mid+1;
    else last = mid-1;   

    mid = (first + last)/2;
  }
  return location;
}
void keyPressed() {
  goSearch(keyCode);
}

void goSearch(int id) {    // selection to decide ho to proceed depending on waht argument is passed
  if (id == 76) {
   int result = linearSearch (44, nums);
   println(result);
  }
  else if (id == 66) {
    int result = binarySearch(44,nums); 
    println( result); 
}

else println("press only the b or the l key please");


  
  
}

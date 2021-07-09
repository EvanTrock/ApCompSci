ArrayList <Contact> contacts;

void setup() {
  size(800, 600);
  background(255);
  contacts = new ArrayList<Contact>();
  createContacts();
  printContacts(null);  //print an unsorted list

  //allowable field names to sort on: "last name", "first name", "address", "phone", "email", "age", "married"
  //***** Add a UI to click-select one of these; what you click is the "input" to your function/procedure because official input must happen at runtime
  //goSort(contacts, "email");  //***** This is the function/procedure you must call more than once with different arguments resulting in the algorithm behaving differently
}

void createContacts() {
  contacts.add(new Contact("Smith", "John", "27 Sunnyside Ln Westport, CT", "203-123-4567", "jsmith123@gmail.com", 21, false));
  contacts.add(new Contact("Virtue", "Trevor", "15 North S., Hartford CT", "860-343-4264", "tvirtue123@hotmail.com", 45, true));
  contacts.add(new Contact("Blair", "Verona", "333 Main St, Wethersfield, CT", "860-313-8874", "blvtop@gmail.com", 16, false));
  contacts.add(new Contact("Andrews", "Lisa", "8881 Madison Ave, Framingham MA", "508-909-5286", "andrewlisanator@gmail.com", 30, true));
  contacts.add(new Contact("Stanbridge", "Laura", "11 Meadowview Rd, Trumbull CT", "203-261-2991", "stan5laura8@optonline.net", 26, false));
  contacts.add(new Contact("Burch", "Brad", "1 Cove Rd, Greenwhich CT", "203-242-3528", "mybb323@gmail.com", 18, false));
}

void draw() {
  fill(0);
  textSize(20);
  text("Press the 1 Key to sort by Last Name", 50, 50  );
  text("Press the 2 Key to sort by First Name", 50, 100  );
  text("Press the 3 Key to sort by Adress", 50, 150  );
  text("Press the 4 Key to sort by Phone Number", 50, 200  );
  text("Press the 5 Key to sort by Email", 50, 250  );
  text("Press the 6 Key to sort by Age", 50, 300  );
  text("Press the 7 Key to sort by Whether or not the  person is Married", 50, 350  );
}

void keyPressed()
{
  if (key == '1') { 
  goSort(contacts, '1');
  }
  if (key == '2') {
   goSort(contacts, '2');
  }
  if (key == '3') { 
  goSort(contacts, '3');
  }
  if (key == '4') { 
  goSort(contacts, '4');
  }
  if (key == '5') { 
  goSort(contacts, '5');
  }
  if (key == '6') { 
  goSort(contacts, '6');
  }
  if (key == '7') { 
  goSort(contacts, '7');
  }
}

void goSort(ArrayList<Contact> list, char myKey) {
  String FieldName="last name";

  if (myKey == '1') {
    FieldName="last name";
  } else if (myKey == '2') {
    FieldName="first name";
  } else if (myKey == '3') {
    FieldName="address";
  } else if (myKey == '4') {
    FieldName="phone";
  } else if (myKey == '5') {
    FieldName="email";
  } else if (myKey == '6') {
    FieldName="age";
  } else if (myKey == '7') {
    FieldName="married";
  }

  int n = list.size();
  for (int i = 0; i < n-1; i++) {
    for (int j=1; j < (n-i); j++) {
      // if method Contact compare() => 1 item[j-1] > item[j] so we swap; see Contact class
      if (list.get(j-1).compare(list.get(j), FieldName) == 1) {
        Contact temp = list.get(j-1);
        list.set(j-1, list.get(j));
        list.set(j, temp);
      }
    } 
    printContacts(FieldName);
  }    

  //bubbleSort(list, field);
  printContacts(FieldName);  //print the sorted list
}

void printContacts(String field) {
  //***** Acceptable to print to console; an improvement would be drawing text to screen
  //***** You also need to add a header row to identify each field/column
  println("SORTED BY: " + field);

  for (Contact c : contacts) {
    //println(c.lastName + ", " + c.firstName + ", " + c.address + ", " + c.phone + ", " + c.email + ", " + c.age + ", " + c.married);  //sloppy print
    System.out.printf("%-15s%-15s%-40s%-22s%-35s%-8d%-10b\n", c.lastName, c.firstName, c.address, c.phone, c.email, c.age, c.married);  //column format printing
  }
  System.out.printf("\n\n");
}

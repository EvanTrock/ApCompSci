void setup() {
  LinkedList list = new LinkedList();
  
  list.add(new Contact("foo",6));
  list.add(new Contact("bar",8));
  list.add(new Contact("bah",22));
  list.add(new Contact("bat",52));
  list.add(new Contact("wibble",9));
  list.add(new Contact("wobble",1));
  list.add(new Contact("wubble",18));
  
  //println(list.search("bar")); 
  
  //list.remove("bar");
  //println(list.head.next.data);
  //println(list.head.next.next.data);
  
  println(list.head.next.next.next.next.next.data.name);
  println(list.head.next.next.next.next.next.previous.data.name);
  println(list.head.next.next.next.next.previous.data.name);
}

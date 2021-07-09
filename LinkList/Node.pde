class Node {
  
  Contact data;
  Node next;
  Node previous;


  
  Node(Contact _data, Node _previous) {
    data = _data;
    previous = _previous;
  }
  
  //formal "getter"
  Node getNext() {
    return next;
  }
  
  //formal setter
  void setNext(Node n) {
    next = n;
  }
 
}

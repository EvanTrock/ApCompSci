class LinkedList {
  
  Node head;
  
  LinkedList() {
    head = new Node(null, null);   
  }
  
  void add(Contact content) {
    Node temp = head;
    while (temp.next != null) {
      temp = temp.next;
    }
    temp.next = new Node(content,temp);
  }
  
  int search(String content) {
    int i = 0;  //create an index 
    int location = -1;  // if we don't find the item then return negative 1;
    Node temp = head;
    while (temp.next != null) {
      i++;
      temp = temp.next;
      if (temp.data.equals(content)) {
        location = i;
        break;
      }
    }
    return location;
    
  }
   int remove(String content) {
    int i = 0;  //create an index 
    int location = -1;  // if we don't find the item then return negative 1;
    Node temp = head;
    while (temp.next != null) {
      i++;
      temp = temp.next;
      if (temp.next.data.equals(content)) {
        location = i+1;
        temp.next=temp.next.next; //Breaks the chain and reattaches while removing one link
        break;
      }
    }
    return location;
    
  }
}

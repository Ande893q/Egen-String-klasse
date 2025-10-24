class MyStringLL {
  Node head;


  MyStringLL(String input) {
    for (int i=0; i<input.length(); i++) {
      append(input.charAt(i));
    }
  }

  void append(char c) {
    Node newNode=new Node(c);
    if (head==null) {
      head=newNode;
    } else {
      Node current =head;
      while (current.next!=null) {
        current=current.next;
      }
      current.next=newNode;
    }
  }


  String toString() {
    String result="";
    Node current =head;
    while (current !=null) {
      result += current.data;
      current =current.next;
    }
    return result;
  }

  int length() {
    int count=0;
    Node current=head;
    while (head!=null) {
      count=count+1;
      current=current.next;
    }

    return count;
  }

  char charAt(int index) {
    Node current=head;
    int i =0;
    while (current!=null) {
      if (i==index) {
        return current.data;
      }
      current=current.next;
      i++;
    }
    return '?';
  }

 // boolean equals(MyStringLL other) {
  //}

  //MyStringLL subString(int start, int end) {
 // }

  MyStringLL toUpperCase() {
    MyStringLL result = new MyStringLL ("") ;
    Node current = head ;
    while ( current != null ) {
      char c = current . data ;
      if ( c >= 'a' && c <= 'z') {
        result . append (( char ) ( c - 32) ) ;
      } else {
        result . append ( c ) ;
      }
      current = current . next ;
    }
    return result ;
  }

  MyStringLL toLowerCase() {
    MyStringLL result = new MyStringLL ("") ;
    Node current = head ;
    while ( current != null ) {
      char c = current . data ;
      if ( c >= 'A' && c <= 'Z') {
        result . append (( char ) ( c + 32) ) ;
      } else {
        result . append ( c ) ;
      }
      current = current . next ;
    }
    return result ;
  }

 // int indexOf(String sub) {
  //}
}

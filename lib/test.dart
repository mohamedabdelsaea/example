class Node {
  int value;

  Node? next;

  Node(this.value) {
    next = null;
  }
}

class LinkedList {
  Node? head;

  Node? tail;

  int length = 0;

  LinkedList(this.length) {
    head = tail = null;
  }

  void appendNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = tail = newNode;
    } else {
      tail = newNode;
      tail!.next = newNode;
    }
    length ++ ;
  }
}

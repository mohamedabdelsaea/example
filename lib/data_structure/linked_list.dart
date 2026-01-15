// element of an array
class Node {
/* this element have 2 attributes :-
1- value of it
2- nullable pointer to point the next node of our array
*/
  int value;
  Node? next;
  Node(this.value) {
    this.next = null;
  }
}

// an array

class LinkedList {
/*
an array that have 2 attributes
1- head => point nullable first node 
2- length of the array
3- tail => point nullable last node

*/

  Node? head;
  Node? tail;
  int length;

  LinkedList([this.length = 0]) {
    head = tail = null;
  }

// method to add node or object in last element to our linked list
  void appendNode(int value) {
    // new node variable
    Node newNode = Node(value);
    /* check if list's head is null:-
    - if true  - assign new node to head
    - if false :- 
        * create iterator variable to assign head node on it
        * create while loop as well as iterator.next != null => then reassign iterator.next to iterator
        * when iterator.next is null exit loop and then append new node to iterator.next 
    - increase list length by 1
    */
    if (head == null) {
      head = tail = newNode;
    } else {
      tail = newNode;
      tail!.next = newNode;
    }
    length++;
  }

// method to add node or object in first element to our linked list
  void insertFirstNode(int value) {
    // create new node
    Node newNode = Node(value);

    // assign head node to next node of new node
    newNode.next = head;

    // assign new node to head node
    head = newNode;

    // increase list length by 1
    length++;
  }

// method to add node or object in custom element to our linked list
  void insertNode(int index, int value) {
    // check if index is equal to list lenghth:-

    if (index == length) {
      // 1- if true call append function

      appendNode(value);

      // check if index is equal 0:-
    } else if (index == 0) {
      // 2- if true call insertFirstNode function

      insertFirstNode(value);

      //  if index is not equal to list length or 0 :-
    } else {
      // 3- if true :-
      // create iterator Node variable and assign head node to it
      Node iterator = head!;
      // create for loop to have previous node of our index
      for (int i = 0; i < index - 1; i++) {
        iterator = iterator.next!;
      }
      // create previousNode  variable and assign iterator node to it
      Node previousNode = iterator;
      // create afterNode  variable and assign previousNode.next to it
      Node afterNode = previousNode.next!;
      // create newNode  variable
      Node newNode = Node(value);
      // assign new node to previousnode.next
      previousNode.next = newNode;
      // assign after node to newNode.next
      newNode.next = afterNode;
      // increase list length by 1
      length++;
    }
  }

  void deleteNode(int index) {
    if (index == 0) {
      head = head!.next;
    } else {
      // assign head node to iterator node
      Node iterator = head!;
      // create for loop to have previous node of our index
      for (int i = 0; i < index - 1; i++) {
        iterator = iterator.next!;
      }

      // create previousNode  variable and assign iterator node to it
      Node previousNode = iterator;
      // assign previous node.next to node nodeShouldDeleted variable
      Node nodeShouldDeleted = previousNode.next!;
      // assign nodeShouldDeleted.next to previousNode.next
      previousNode.next = nodeShouldDeleted.next;
      // make nodeShouldDeleted.next null
      nodeShouldDeleted.next = null;

      // decrease length by 1
      length--;
    }
  }

  bool isEmpty() {
    return length == 0;
  }

  // Linked list practice (print all nodes in our linked list)
  void printNodesValue() {
    if (length == 0) {
      print("There is no nodes to print it's data");
      return;
    }
    Node iterator = head!;
    for (int i = 0; i < length; i++) {
      print("node no $i value = ${iterator.value} \n");
      iterator = iterator.next!;
    }
  }
}

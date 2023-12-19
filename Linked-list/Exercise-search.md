```
class Node {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList {
  constructor() {
    this.head = null;
  }

  // Method to insert a node at the end of the linked list
  append(data) {
    const newNode = new Node(data);

    if (!this.head) {
      this.head = newNode;
      return;
    }

    let current = this.head;
    while (current.next) {
      current = current.next;
    }
    current.next = newNode;
  }

  // Method to search for a specific value in the linked list
  search(value) {
    let current = this.head;

    while (current) {
      if (current.data === value) {
        return true; // Node with the specified value found
      }
      current = current.next;
    }

    return false; // Node with the specified value not found
  }
}

// Usage
const linkedList = new LinkedList();
linkedList.append(10);
linkedList.append(20);
linkedList.append(30);
linkedList.append(40);

console.log(linkedList.search(20)); // Output: true
console.log(linkedList.search(35)); // Output: false
```
* Node class represents each node in the linked list, containing data and a reference to the next node.
* LinkedList class represents the linked list itself, initializing with a head node.
* append() method adds a new node with the provided data to the end of the linked list.
* search() method traverses the linked list, checking each node's data until it finds the specified value. If found, it returns true; otherwise, it returns false.

```
class Node {
  constructor(data) {                       // Constructor function that initializes the data and next properties of a node
    this.data = data;                       // Data stored in the node
    this.next = null;                       // Pointer to the next node
  }
}

class LinkedList {
  constructor() {                           // Constructor function that initializes the head property of the linked list
    this.head = null;                       // Head of the linked list
  }

  append(data) {                            // Method to insert a node at the end of the linked list
    const newNode = new Node(data);         // Create a new node with the given data

    if (!this.head) {                       // If the linked list is empty, set the head to the new node
      this.head = newNode;
      return;
    }

    let current = this.head;               // Start at the head of the linked list
    while (current.next) {                 // Traverse the linked list until the last node is reached
      current = current.next;
    }
    current.next = newNode;                 // Set the next property of the last node to the new node
  }

  search(value) {                           // Method to search for a specific value in the linked list
    let current = this.head;                // Start at the head of the linked list

    while (current) {                       // Traverse the linked list until the last node is reached
      if (current.data === value) {         // If the current node's data matches the value, return true
        return true;
      }
      current = current.next;               // Move to the next node
    }

    return false;                           // If the value is not found, return false
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

# Linked-List
* A linked list is a data structure that consists of a sequence of nodes. Each node contains data and a reference (or link) to the next node in the sequence. The first node in the sequence is called the head, and the last node is called the tail.
* Linked lists are a versatile data structure that can be used for a variety of applications. They are often used for storing lists of data, such as a grocery list or a list of tasks to be completed. They can also be used for implementing queues and stacks, which are data structures that are used to store data in a first-in, first-out (FIFO) or last-in, first-out (LIFO) order.
* Linked lists are a dynamic data structure, which means that they can grow and shrink as needed. This makes them a good choice for applications where the size of the data is not known in advance.
### Advantages of linked lists:
* They are dynamic, which means that they can grow and shrink as needed.
* They are easy to insert and delete elements from.
* They are not as memory-intensive as other data structures, such as arrays.
### Disadvantages of linked lists:
* They can be slower than other data structures, such as arrays, for accessing elements by index.
* They can be more difficult to manage than other data structures, such as arrays.
### Creating Linked-List in JS
```
class Node {
  constructor(value) {
    this.value = value;
    this.next = null; // Reference to the next node
  }
}

class LinkedList {
  constructor() {
    this.head = null; // Points to the first node in the list
    this.tail = null; // Points to the last node in the list
  }

  // Add a new node to the end of the linked list
  append(value) {
    const newNode = new Node(value);
    if (!this.head) {
      // If the list is empty, set the new node as both the head and tail
      this.head = newNode;
      this.tail = newNode;
    } else {
      // Otherwise, update the tail to point to the new node
      this.tail.next = newNode;
      this.tail = newNode; // Update the tail to the new node
    }
  }

  // Display the linked list as an array for demonstration purposes
  toArray() {
    const elements = [];
    let current = this.head;
    while (current) {
      elements.push(current.value);
      current = current.next;
    }
    return elements;
  }
}

// Usage example:
const linkedList = new LinkedList();
linkedList.append(1);
linkedList.append(2);
linkedList.append(3);

console.log(linkedList.toArray()); // Output: [1, 2, 3]
```
#### Singly Linked List vs Doubly Linked List
* The main difference between singly linked lists and doubly linked lists is that doubly linked lists have pointers to both the next and previous nodes, while singly linked lists only have pointers to the next node. This makes doubly linked lists more versatile, as they can be traversed in both directions. However, singly linked lists are simpler and require less memory, so they are sometimes preferred for applications where speed is critical.
#### Complexity (BIG-O) of Linked-List
* Adding an item to the end (push): O(1) - Constant time.
* Removing an item from the end (pop): O(n) - Linear time.
* Adding an item to the beginning (unshift): O(1) - Constant time.
* Removing an item from the beginning (shift): O(1) - Constant time.
* Inserting an item at a specific index: O(n) - Linear time.
* Removing an item at a specific index: O(n) - Linear time.
* Finding an item by value: O(n) - Linear time.
* Finding an item by index: O(n) - Linear time.
#### Object type representation
![Screenshot](https://github.com/vishnuabhi4/Data-Structure-JS/blob/main/Big-O/Assets/linked%20list%20object.png?raw=true)

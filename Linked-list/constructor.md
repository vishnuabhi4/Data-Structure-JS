# Creating a constructor and adding values
### Node Class
* Before creating the linked list constructor, you've defined a separate Node class. This Node class has two properties: value to store the data value and next to store a reference to the next node in the list.

### Linked List Constructor
* The linked list constructor initializes the linked list with an initial node. Here's a breakdown of what the constructor does:

* It accepts a value as an argument.
* It creates a new Node instance with the provided value.
* It sets the head property of the linked list to point to the newly created node.
* It sets the tail property of the linked list to also point to the newly created node.
* It initializes the length property to 1 to indicate that there is one node in the list.

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

    display() {
        let current = this.head;
        while (current) {
            console.log(current.data + " -> ");
            current = current.next;
        }
        console.log("null");
    }
}

// Example usage:
const myList = new LinkedList();
myList.append(1);
myList.append(2);
myList.append(3);
myList.display();
```
#### The `while` conditions in the JavaScript code I provided are used to traverse the linked list. Let me explain them in detail:

* In the `append(data)` method:
   * `if (!this.head)` checks if the linked list is empty. If it is, the new node becomes the head of the list.
   * `while (current.next)` iterates through the list until it finds the last node (i.e., the node with `current.next` set to `null`). This is where the new node is appended.

* In the `display()` method:
   * `while (current)` iterates through the linked list, printing the data of each node until it reaches the end of the list (when `current` becomes `null`).

#### These `while` conditions ensure that you can correctly add new nodes to the end of the linked list and display its contents.
# .next
#### In JavaScript, when you create a Node object with the next property, like this
```
class Node {
    constructor(data) {
        this.data = data;
        this.next = null;
    }
}
```
* The next property is a reference to the next node in the linked list. It starts as null when you create a new node, indicating that there is no node after it.
* When you create a linked list and use the append(data) method to add nodes, the next property is assigned appropriately to create the linkage between nodes. For example:

```
const myList = new LinkedList();
myList.append(1);
myList.append(2);
myList.append(3);
```
* In this case, the append method creates a linked list like this:
```
1 -> 2 -> 3 -> null
```
#### Here's a step-by-step breakdown of what happens in the append method:

* When you add the first element (1), it becomes the head, and the next property of this node is null.
* When you add the second element (2), it becomes the next node after the head, and the next property of the head is set to point to this new node.
* Similarly, when you add the third element (3), it becomes the next node after 2, and the next property of 2 is set to point to this new node.
* So, the .next property is what creates the linkage between nodes in the linked list, allowing you to traverse the list from one node to the next.

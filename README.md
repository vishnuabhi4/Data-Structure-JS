# Data-Structure-JS
Welcome to the JavaScript Data Structure Repository! 🚀
```
// Defining a Node class representing a node in a linked list
class Node {
    constructor(value){
        this.value = value; // Assigning a value to the node
        this.next = null; // Initializing the 'next' pointer to null
    }
}

// Defining a LinkedList class
class LinkedList {
    constructor(value) {
        // Creating a new node with the provided value
        const newNode = new Node(value);
        // Initializing the head of the linked list with the new node
        this.head = newNode;
        // Initializing the tail of the linked list with the head node
        this.tail = this.head;
        // Setting the initial length of the linked list to 1
        this.length = 1;
    }

    // Method to print all values in the linked list
    printList() {
        let temp = this.head;
        // Loop through the linked list and print each node's value
        while (temp !== null) {
            console.log(temp.value);
            temp = temp.next; // Move to the next node in the list
        }
    }

    // Method to display the value of the head node
    getHead() {
        if (this.head === null) {
            console.log("Head: null");
        } else {
            console.log("Head: " + this.head.value);
        }
    }

    // Method to display the value of the tail node
    getTail() {
        if (this.tail === null) {
            console.log("Tail: null");
        } else {
            console.log("Tail: " + this.tail.value);
        }
    }

    // Method to display the length of the linked list
    getLength() {
        console.log("Length: " + this.length);
    }

    //

```
* Local Variables: Variables declared within functions or methods, like temp in the printList() method, are local variables. They hold temporary values used for iteration or storing intermediate results within a specific function scope.
* Variables like this.head, this.tail, and this.length in the LinkedList class are instance variables or properties. They store data related to each instance of the LinkedList class and are accessible throughout the class methods using this.
* ``` const newNode = new Node(value); ``` Classes can interact with each other by creating instances (objects) of one class inside another.

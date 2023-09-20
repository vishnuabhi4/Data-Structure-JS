## Linked List Exercise
```
class Node {
    constructor(value){
        this.value = value;
        this.next = null;
    }
}
```
* You can create instances of the Node class to represent individual elements (nodes) in the list, and then use these nodes to construct the linked list by connecting them using the next property.
```
class LinkedList {
    constructor(value) {
    // initilize the L-L with head, tail, and length to form L-L
        const newNode = new Node(value);
        this.head = newNode;
        this.tail = this.head;
        this.length = 1;
    }
 append(value) {
        const newNode = new Node(value);

        if (this.head === null) {
            // If the list is empty, set both head and tail to the new node
            this.head = newNode;
            this.tail = newNode;
        } else {
            // Otherwise, update the current tail's next pointer to the new node
            this.tail.next = newNode;
            // Update the tail to be the new node
            this.tail = newNode;
        }

        // Increment the length
        this.length++;

    printList() {
        let temp = this.head;
        while (temp !== null) {
            console.log(temp.value);
            temp = temp.next;
        }
    }
    getHead() {
        if (this.head === null) {
            console.log("Head: null");
        } else {
            console.log("Head: " + this.head.value);
        }
    }

    getTail() {
        if (this.tail === null) {
            console.log("Tail: null");
        } else {
            console.log("Tail: " + this.tail.value);
        }
    }

    getLength() {
        console.log("Length: " + this.length);
    }

}


function test() {
    let myLinkedList = new LinkedList(4);
    
    myLinkedList.getHead();
    myLinkedList.getTail();
    myLinkedList.getLength();
    console.log("\nLinked List:");
    myLinkedList.printList();
    myLinkedList.append(5);
}


test();
```
/*
    EXPECTED OUTPUT:
    ----------------
    Head: 4
    Tail: 4
    Length: 2
    
    Linked List:
    4
    5
*/


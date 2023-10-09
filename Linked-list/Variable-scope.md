## Scope of variables in the LL
```
class Node {
    constructor(data) {
        // Variable 'data' is a parameter of the constructor function.
        // Its scope is limited to the constructor function.
        this.data = data;
        // Variable 'this.data' is an instance variable.
        // Its scope is the entire class 'Node'.
        this.next = null; // Variable 'next' is an instance variable.
        // Its scope is the entire class 'Node'.
    }
}

class LinkedList {
    constructor() {
        // Variable 'head' is an instance variable of the class 'LinkedList'.
        // Its scope is the entire class 'LinkedList'.
        this.head = null;
        // Variable 'length' is an instance variable of the class 'LinkedList'.
        // Its scope is the entire class 'LinkedList'.
        this.length = 0;
    }

    // Append a new node to the end of the list
    append(data) {
        // Variable 'data' is a parameter of the 'append' method.
        // Its scope is limited to the 'append' method.
        const newNode = new Node(data);
        // Variable 'newNode' is a local variable within the 'append' method.
        // Its scope is limited to the 'append' method.

        if (!this.head) {
            // Variable 'this.head' is an instance variable of the class 'LinkedList'.
            // Its scope is the entire class 'LinkedList'.
            this.head = newNode;
        } else {
            let current = this.head;
            // Variable 'current' is a local variable within the 'append' method.
            // Its scope is limited to the 'append' method.

            while (current.next) {
                current = current.next;
                // Variable 'current' is updated within the loop.
                // Its scope remains limited to the 'append' method.
            }

            current.next = newNode;
            // Variable 'newNode' is accessed within the 'append' method.
            // Its scope is still limited to the 'append' method.
        }
        this.length++;
        // Variable 'this.length' is an instance variable of the class 'LinkedList'.
        // Its scope is the entire class 'LinkedList'.
    }

    // ... (other methods not shown)
}
```

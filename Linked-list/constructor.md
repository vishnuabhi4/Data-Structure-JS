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

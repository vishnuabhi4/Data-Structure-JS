You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.
```
// Definition for a singly-linked list node
class ListNode {
    constructor(val = 0, next = null) {
        this.val = val;
        this.next = next;
    }
}

// Function to add two numbers represented as linked lists
function addTwoNumbers(l1, l2) {
    let dummyHead = new ListNode(0);
    let current = dummyHead;
    let carry = 0;

    while (l1 !== null || l2 !== null) {
        const x = l1 !== null ? l1.val : 0;
        const y = l2 !== null ? l2.val : 0;
        const sum = x + y + carry;

        carry = Math.floor(sum / 10);
        current.next = new ListNode(sum % 10); //Calculates the remainder of sum when divided by 10
        current = current.next;

        if (l1 !== null) l1 = l1.next;
        if (l2 !== null) l2 = l2.next;
    }

    if (carry > 0) {
        current.next = new ListNode(carry);
    }

    return dummyHead.next;
}


// Test cases
// Creating linked list 1: 2 -> 4 -> 3
let l1 = new ListNode(2);
l1.next = new ListNode(4);
l1.next.next = new ListNode(3);

// Creating linked list 2: 5 -> 6 -> 4
let l2 = new ListNode(5);
l2.next = new ListNode(6);
l2.next.next = new ListNode(4);

// Testing the function
let result = addTwoNumbers(l1, l2);

// Displaying the result
let output = "";
while (result !== null) {
    output += result.val + " -> ";
    result = result.next;
}
output += "null";

console.log("Resulting linked list: " + output);
```
*  in JavaScript, objects can contain other objects as properties. In the context of linked lists, each node is an object containing two properties (val and next). The next pr// Definition for a singly-linked list node
class ListNode {
    constructor(val = 0, next = null) {
        this.val = val;
        this.next = next;
    }
}
operty itself points to another node (object) or can be null to indicate the end of the list.
* Math.floor() is a JavaScript function that returns the largest integer less than or equal to a given number. It takes a single argument, the number you want to round down, and returns the largest integer less than or equal to that number.
For example:
Math.floor(3.9); // Output: 3
Math.floor(7.2); // Output: 7
Math.floor(-5.5); // Output: -6
```
// Function to add two numbers represented as linked lists
var addTwoNumbers = function(l1, l2, carry = 0) {
    let sentinel = tail = new ListNode();

    while (l1 || l2 || carry) {/* Time O(MAX(N, M)) */
        const sum = (l1?.val || 0) + (l2?.val || 0) + carry;
        const val = sum % 10;
        carry = Math.floor(sum / 10);

        tail.next = new ListNode(val);
        tail = tail.next;

        l1 = l1?.next || null;
        l2 = l2?.next || null;
    }

    return sentinel.next;
};

// Creating linked list 1: 2 -> 4 -> 3
let l1 = new ListNode(2);
l1.next = new ListNode(4);
l1.next.next = new ListNode(3);

// Creating linked list 2: 5 -> 6 -> 4
let l2 = new ListNode(5);
l2.next = new ListNode(6);
l2.next.next = new ListNode(4);

// Testing the function
let result = addTwoNumbers(l1, l2);

// Displaying the result
let output = "";
while (result !== null) {
    output += result.val + " -> ";
    result = result.next;
}
output += "null";

console.log("Resulting linked list: " + output);
```

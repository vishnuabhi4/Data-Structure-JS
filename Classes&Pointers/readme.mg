
## Classes

In JavaScript, classes are a more modern and organized way to create constructor functions and define object blueprints. Introduced in ECMAScript 2015 (ES6), classes provide a cleaner syntax for creating objects, defining methods, and handling inheritance.
### Constructors

A constructor is a special type of function that is used to create and initialize objects. Constructors are primarily used in object-oriented programming to define the blueprint or template for creating instances of objects with shared properties and methods.
```javascript
 // Class definition for creating a Person object
class Person {
// Constructor function for creating a Person object
  constructor(name, age) {
    // Properties
    this.name = name;
    this.age = age;
  }

  // Method
  sayHello() {
    console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
  }
}

// Creating instances of Person using the class
const person1 = new Person('Alice', 30);
const person2 = new Person('Bob', 25);

// Calling the method on instances
person1.sayHello(); // Output: Hello, my name is Alice and I am 30 years old.
person2.sayHello(); // Output: Hello, my name is Bob and I am 25 years old.

```



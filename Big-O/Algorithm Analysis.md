
## Algorithm Analysis ⌘
In computer science, Big O notation (also known as asymptotic notation) is used to characterize the performance of algorithms in terms of their time or space complexity. It provides a high-level understanding of how an algorithm's efficiency scales with increasing input size.

### O(1) - Constant Time Complexity
* An algorithm has constant time complexity (O(1)) if its execution time remains constant, regardless of the input size.   
* It means that the algorithm's performance doesn't depend on the input size; it takes a constant amount of time to complete.
``` 
function printFirstElement(arr) {
    console.log(arr[0]);
}
```
### O(n) - Linear Time Complexity:
* An algorithm has linear time complexity (O(n)) if its execution time grows linearly with the input size.
* As the input size increases, the algorithm's execution time increases proportionally.
For example, iterating through an array to perform a constant-time operation on each element has linear time complexity.
```
function linearSearch(arr, target) {
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] === target) {
            return true;
        }
    }
    return false;
}
```
### O(n^2) - Quadratic Time Complexity:

* An algorithm has quadratic time complexity (O(n^2)) if its execution time grows quadratically with the input size.
* It means that the execution time increases exponentially as the input size increases.
Commonly seen in nested loops where each iteration takes O(1) time.
```
function bubbleSort(arr) {
    const n = arr.length;
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
            }
        }
    }
}
```
### O(log n) - Logarithmic Time Complexity:

* An algorithm has logarithmic time complexity (O(log n)) if its execution time increases logarithmically with the input size.
* It's commonly associated with algorithms that divide the input in half with each step, like binary search in a sorted array.
Logarithmic time complexity indicates highly efficient algorithms that quickly narrow down the search space.
```
function binarySearch(arr, target) {
    let low = 0;
    let high = arr.length - 1;
    while (low <= high) {
        let mid = Math.floor((low + high) / 2);
        if (arr[mid] === target) {
            return mid;
        } else if (arr[mid] < target) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    return -1;
}
```

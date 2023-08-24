# Array Big(O)
### push(item1, item2, ...):
* Adds one or more elements to the end of an array.
* Returns the new length of the array.
Time Complexity: O(1) (amortized)
* Explanation: Adding elements to the end of the array is typically a constant-time operation. However, in some cases, when the underlying array needs to be resized, it can take longer.
Space Complexity: O(1)
* Explanation: Adding elements to the end of the array does not increase the space complexity significantly. In most cases, the memory allocation for the new elements is minimal.
### pop():
* Removes and returns the last element from the end of an array.
* Modifies the original array.
Time Complexity: O(1)
* Explanation: Removing the last element from the end of the array is a constant-time operation.
Space Complexity: O(1)
* Explanation: Removing the last element from the end of the array does not significantly affect the space complexity.
### unshift(item1, item2, ...):
* Adds one or more elements to the beginning of an array.
* Returns the new length of the array.
Time Complexity: O(n)
* Explanation: Adding elements to the beginning of the array requires shifting all existing elements to make room for the new elements. This results in a linear time complexity.(changing the index of each element)
Space Complexity: O(n)
* Explanation: Adding elements to the beginning of the array requires shifting existing elements. If the array needs to be resized, it might require additional memory.
### shift():
* Removes and returns the first element from the beginning of an array.
* Modifies the original array.
Time Complexity: O(n)
* Explanation: Removing the first element from the beginning of the array requires shifting all remaining elements to fill the gap. This results in a linear time complexity.
Space Complexity: O(1)
* Explanation: Removing the first element from the beginning of the array does not significantly affect the space complexity.
### concat(array1, array2, ...):
* Combines arrays by concatenating them.
* Returns a new array without modifying the original arrays.
Time Complexity: O(n)
* Explanation: Creating a new concatenated array involves copying the elements from the input arrays, resulting in a linear time complexity.
Space Complexity: O(n)
* Explanation: Creating a new concatenated array involves copying elements from the input arrays, resulting in a new array with space proportional to the sum of input array sizes.
### slice(startIndex, endIndex):
* Creates a new array by copying elements from the original array within the specified range.
* Does not modify the original array.
Time Complexity: O(endIndex - startIndex)
* Explanation: Creating a new array using slice involves copying a range of elements from the original array, resulting in a time complexity proportional to the size of the range.
Space Complexity: O(endIndex - startIndex)
* Explanation: Creating a new array using slice involves copying a range of elements from the original array, resulting in space proportional to the size of the range.
### splice(startIndex, deleteCount, item1, item2, ...):
* Adds or removes elements from an array at a specified index.
* Modifies the original array and returns an array of removed elements.
Time Complexity: O(n)
* Explanation: Adding or removing elements using splice requires shifting elements and potentially resizing the array, resulting in a linear time complexity.
Space Complexity: O(n)
* Explanation: Adding or removing elements using splice might require shifting elements and, if the array is resized, additional memory.
### forEach(callback(item, index, array)):
* Executes a provided function once for each array element.
* Does not create a new array.
Time Complexity: O(n)
* Explanation: The callback function is executed for each element in the array, resulting in a linear time complexity.
Space Complexity: O(1)
* Explanation: The forEach method does not create new arrays and uses constant space for the callback function execution.
### map(callback(item, index, array)):
* Creates a new array with the results of applying a provided function to each element of the original array.
Time Complexity: O(n)
* Explanation: The callback function is executed for each element, resulting in a new array with the same length as the original.
Space Complexity: O(n)
* Explanation: The map method creates a new array with the same number of elements as the original array.
### filter(callback(item, index, array)):
* Creates a new array containing all elements that pass a provided test.
* The provided callback function should return a boolean value.
Time Complexity: O(n)
* Explanation: The callback function is executed for each element, resulting in a new array that may have fewer elements than the original.
Space Complexity: O(n)
* Explanation: The filter method creates a new array with fewer or equal elements to the original array.
### find(callback(item, index, array)):
* Returns the first element in the array that satisfies the provided testing function.
Time Complexity: O(n)
* Explanation: The callback function is executed for each element until a matching element is found.
Space Complexity: O(1)
* Explanation: The find method does not create new arrays and uses constant space for the callback function execution.
### indexOf(item, startIndex):
* Returns the first index at which a given element can be found in the array, or -1 if not present.
Time Complexity: O(n)
* Explanation: The array is searched linearly for the specified item.
Space Complexity: O(1)
* Explanation: The indexOf method does not create new arrays.
### includes(item, startIndex):
* Determines whether an array includes a certain element.
* Returns a boolean value.
Time Complexity: O(n)
* Explanation: The array is searched linearly to determine if the specified item is present.
Space Complexity: O(1)
* Explanation: The includes method does not create new arrays.
### reduce(callback(accumulator, currentValue, index, array), initialValue):
* Applies a function against an accumulator and each element in the array, reducing it to a single value.
Time Complexity: O(n)
* Explanation: The callback function is executed for each element, and the result is accumulated over the array.
Space Complexity: O(1)
* Explanation: The reduce method does not create new arrays and uses constant space for the accumulator and callback function execution.
### sort(compareFunction(a, b)):
* Sorts the elements of an array in place and returns the sorted array.
* The compareFunction defines the sort order.
Time Complexity: O(n log n) (for efficient algorithms)
* Explanation: The time complexity depends on the sorting algorithm used. Efficient algorithms like Merge Sort or Quick Sort have an average time complexity of O(n log n).
Space Complexity: O(log n)
* Explanation: The sort method typically sorts the array in place and uses additional space for temporary variables during the sorting process.
### reverse():
* Reverses the order of the elements in an array in place.
Time Complexity: O(n)
* Explanation: The elements of the array are reversed in place.
Space Complexity: O(1)
* Explanation: The reverse method reverses the order of elements in place and does not significantly affect the space complexity.
### length:
* Property that indicates the number of elements in an array.
Time Complexity: O(1)
* Accessing the length property is a constant-time operation.
Space Complexity: O(1)
* Explanation: Accessing the length property does not create new arrays or consume significant additional memory.

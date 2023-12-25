### Checking if the array has dupicate numbers
```
// Define the containsDuplicate function
const containsDuplicate = (nums) => {
    for (let right = 0; right < nums.length; right++) {
        for (let left = 0; left < right; left++) {
            const isDuplicate = nums[left] === nums[right];
            if (isDuplicate) return true;
        }
    }
    return false;
}

// Test the containsDuplicate function
const numbers = [1, 2, 3, 4, 5, 2]; // Sample array with duplicates
const hasDuplicates = containsDuplicate(numbers);

if (hasDuplicates) {
    console.log("The array contains duplicates.");
} else {
    console.log("The array does not contain duplicates.");
}
```
### Two sum
```
var twoSum = (nums, target) => {
    for (let curr = 0; curr < nums.length; curr++) {
        const complement = target - nums[curr];

        for (let next = (curr + 1); next < nums.length; next++) {
            const num = nums[next];

            const isTarget = num === complement
            if (isTarget) return [curr, next];
        }
    }

    return [-1, -1];
}

const nums = [2, 7, 11, 15];
const target = 9;

// Call the twoSum function with the nums array and target value
const result = twoSum(nums, target);

console.log("Indices of the two numbers:", result);

```
* In the case of the twoSum function, this return statement [ -1, -1 ] is returning an array with two -1 values. This can serve as an indicator or convention to signal that the function did not find a valid solution or pair of elements in the input array that satisfies the conditions set within the function.
### Two sum using Map()
```
var twoSum = (nums, target) => {
    const map = getMap(nums);       /* Time O(N) | Space O(N) */
    // iterates through the nums array and sets each element of nums as a key in the Map with its corresponding index as the value.
    return getSum(nums, target, map)/* Time O(N) */
    //return statement is used to pass a value back from a function.(which is console.log in this case )
}

const getMap = (nums, map = new Map()) => {
    for (let index = 0; index < nums.length; index++) {/* Time O(N) */
        map.set(nums[index], index);                        /* Space O(N) */
    }

    return map
}

const getSum = (nums, target, map) => {
    for (let index = 0; index < nums.length; index++) {/* Time O(N) */
        const valMinusTar = target - nums[index];
        const sumIndex = map.get(valMinusTar);
        // Retrieve the index(key not necesserly index like in arrays) of the valMinusTar from the "map" which is created in twoSum function (only if there is one)

        const isTarget = map.has(valMinusTar) && (map.get(valMinusTar) !== index)
        // Check if the valMinusTar exists in the map and is not the same index(nums[index] value) as the current number
        if (isTarget) return [ index, sumIndex ]
    }

    return [ -1, -1 ];
}

const nums = [2, 7, 11, 15];
const target = 9;

console.log(twoSum(nums, target)); //initiate code here

```
### Map is a collection of keyed data items, just like an Object. But the main difference is that Map allows keys of any type.
* new Map() – creates the map.
* map.set(key, value) – stores the value by the key.
* map.get(key) – returns the value by the key, undefined if key doesn’t exist in map.
* map.has(key) – returns true if the key exists, false otherwise.
* map.delete(key) – removes the element (the key/value pair) by the key.
* map.clear() – removes everything from the map.
* map.size – returns the current element count.
### Regarding the scope of the map variable:
* Scope within twoSum function:
The map variable is declared within the twoSum function. Its scope is limited to the twoSum function block. It's accessible anywhere within the twoSum function body, including inside any nested blocks or function calls.
* Returned value:
When the map variable is returned from the twoSum function as part of return getSum(nums, target, map), it's passed as an argument to the getSum function.
The getSum function receives the map variable as an argument and can use it within its own scope.
* Returned value:
When the map variable is returned from the twoSum function as part of return getSum(nums, target, map), it's passed as an argument to the getSum function.
The getSum function receives the map variable as an argument and can use it within its own scope.
* The map variable is not directly returned to an outer context like the global scope; rather, it's passed as an argument to the getSum function. Its accessibility will be within the scope of getSum function where it's received as an argument. The scope of a variable refers to where in the code it's accessible or usable. In this case, map is accessible within the getSum function where it's passed as an argument, and its scope is defined by the function block of getSum.
### Parentheses necessity
* In JavaScript, using parentheses around map.get(valMinusTar) in the expression map.get(valMinusTar) !== index is not strictly necessary. The parentheses are used for clarity and to ensure that the comparison (!==) operates correctly, especially when used in conjunction with logical operators.

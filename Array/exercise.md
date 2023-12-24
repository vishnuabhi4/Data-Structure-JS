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
        // Check if the complement exists in the map and is not the same index as the current number
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

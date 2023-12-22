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


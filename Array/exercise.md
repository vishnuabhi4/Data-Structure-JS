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

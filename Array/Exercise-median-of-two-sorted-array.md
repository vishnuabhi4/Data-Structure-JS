```
/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * Time O(log(N * M)) | Space O(N)
 * @return {number}
 */
var findMedianSortedArrays = function (nums1, nums2) {
   
    const canSwap = nums2.length < nums1.length;                       // Check if nums2's length is smaller than nums1's length and swap them if so
    if (canSwap) [nums1, nums2] = [nums2, nums1];

    let [left, right] = [0, nums1.length - 1];                         // Initialize pointers for binary search

    const totalLength = nums1.length + nums2.length;                   // Calculate the total length and the mid index of the merged array
    const mid = totalLength >> 1;                                      // Integer division by 2
    const isEven = totalLength % 2 === 0;                              // Check if the total length is even

    while (true) {                                                     // Binary search to find the median
        const mid1 = left + right;                                     // Calculate mid indices for both arrays based on left and right pointers
        const mid2 = mid - mid1 - 2;

        const { aLeft, aRight, bLeft, bRight } = getPointers(          // Get pointers to elements on both sides of mid indices in both arrays
            nums1,
            mid1,
            nums2,
            mid2
        );

        const isTarget = aLeft <= bRight && bLeft <= aRight;         // Check if the pointers indicate the correct partition
        if (isTarget) 
            return isEven
                ? (Math.max(aLeft, bLeft) + Math.min(aRight, bRight)) / 2
                : Math.min(aRight, bRight);

        const isTargetGreater = aLeft <= bRight;                     // Adjust left and right pointers based on the current partition
        if (isTargetGreater) left = mid1 + 1;

        const isTargetLess = bRight < aLeft;
        if (isTargetLess) right = mid1 - 1;
    }
};

const getPointers = (nums1, mid1, nums2, mid2) => {                                // Function to retrieve pointers to elements on both sides of the mid indices
  
    const getLeft = (nums, index) => (0 <= index ? nums[index] : -Infinity);     // Helper function to get the left element or -Infinity if index is out of bounds
   
    const [aLeft, bLeft] = [getLeft(nums1, mid1), getLeft(nums2, mid2)];             // Calculate left pointers for both arrays

  
    const getRight = (nums, index) =>                                                // Helper function to get the right element or Infinity if index is out of bounds
        index + 1 < nums.length ? nums[index + 1] : Infinity;
 
    const [aRight, bRight] = [getRight(nums1, mid1), getRight(nums2, mid2)];         // Calculate right pointers for both arrays

    return { aLeft, aRight, bLeft, bRight };                                         // Return pointers object
};
console.log(findMedianSortedArrays([1, 2], [3, 4]));                                 // Print the output of findMedianSortedArrays function to the console

```
# Docs...
### Array swap
```
let canSwap = true;
let nums1 = [1, 2, 3];
let nums2 = [4, 5, 6];

if (canSwap) {
  [nums1, nums2] = [nums2, nums1];
}

console.log(nums1); // Output: [4, 5, 6]
console.log(nums2); // Output: [1, 2, 3]
```
### `let [left, right] = [0, nums1.length - 1];`
* It assigns the value of 0 to left and the value of nums1.length - 1 to right using array destructuring 12.
* The square brackets [ ] create an array with two elements, where the first element is 0 and the second element is nums1.length - 1.
* The destructuring assignment syntax let [left, right] = assigns the first element of the array to left and the second element of the array to right.

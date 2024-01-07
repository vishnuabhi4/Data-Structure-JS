* A function named lengthOfLongestSubstring that takes a string s as input and returns the length of the longest substring without repeating characters.
```
var lengthOfLongestSubstring = function (s) {
    const set = new Set();
    let l = 0;
    let max = 0;

    for (let r = 0; r < s.length; r++) {
        while (set.has(s[r])) {
            set.delete(s[l]);
            l++;
        }
        set.add(s[r]);
        max = Math.max(max, set.size);
    }
    return max;
};
console.log(lengthOfLongestSubstring("abcabcbb")); // 3
console.log(lengthOfLongestSubstring("bbbbb")); // 1
console.log(lengthOfLongestSubstring("pwwkew")); // 3
```
*In JavaScript, a Set is a built-in object that allows you to store unique values of any type, whether primitive values or object references 1. The Set object is a collection of values, and each value in the set may only occur once; it is unique in the set’s collection 
*  You can iterate through the elements of a set in insertion order, and the insertion order corresponds to the order in which each element was inserted into the set by the add() method successfully.
*  The Set object provides several methods that allow you to manipulate sets like you would with mathematical operations.
*   These methods include difference(), intersection(), symmetricDifference(), union(), isDisjointFrom(), isSubsetOf(), and isSupersetOf() 1.

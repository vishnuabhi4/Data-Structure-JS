```
var longestPalindrome = (s) => {
    const isEmpty = s.length === 0;                 //checking if the input string is empty.
    if (isEmpty) return ''; 

    const [ left, right ] = search(s);/* Time O(N * N) */

    return s.slice(left, (right + 1));/* Time O(N * N) | Ignore Auxillary Space (N) */
}

const search = (s, left = 0, right = 0) => {
    for (let index = 0; index < s.length; index++) {/* Time O(N) */
        const len1 = getLength(s, index, index);        /* Time O(N) */
        const len2 = getLength(s, index, (index + 1));  /* Time O(N) */
        const [ length, window ] = [ (Math.max(len1, len2)), (right - left) ];

        const canSkip = (length <= window);
        if (canSkip) continue;

        left = (index - ((length - 1) >> 1));
        right = (index + (length >> 1));
    }

    return [ left, right ];
}

const getLength = (s, left, right) => {
    const canExpand = () => ((0 <= left) && (right < s.length));
    const isSame = () => (s[left] === s[right]);

    const isPalindrome = () => (canExpand() && isSame());                  //console.log(typeof(isPalindrome)); out:function
    while (isPalindrome()) { left--; right++; }/* Time O(N) */             //isPalindrome is invoked until its true.

    const window = ((right - left) - 1);

    return window;
}

console.log(longestPalindrome("abba"));
```
# Docs
```
const isPalindrome = () => (canExpand() && isSame());
    while (isPalindrome()) { left--; right++; }
```
function called isPalindrome that returns true if canExpand() and isSame() are both true. The function does not take any arguments.
The while loop in the code will continue to execute as long as isPalindrome() returns true. In each iteration of the loop, the values of left and right are incremented and decremented, respectively. The loop will exit when isPalindrome() returns false.
```
while (isPalindrome()) { left--; right++; }
```
* If the first iteration of the while loop is executed while 
left and right are both zero, then the isPalindrome() 
function will be invoked with left and right both equal 
to zero. Since 0 <= 0 is true, and 0 < s.length is also 
true, the isPalindrome() function will return true. 
Therefore, the while loop will execute once, and left 
and right will both be decremented by 1. The value of 
window will be 0, since right - left - 1 is equal to -1. 
The function will then return 0 as the output.
* isPalindrome itself is not true or false - it’s a function. It’s only when you call the function (i.e., isPalindrome()) that it evaluates to true or false, depending on the return values of canExpand() and isSame().
* This is a key aspect of JavaScript and many other programming languages: functions are first-class objects, meaning they can be assigned to variables, stored in data structures, passed as arguments to other functions, and so on. In this case, isPalindrome is a variable that holds a function. The value of isPalindrome is not the result of the function, but the function itself. So, you’re right that isPalindrome is neither true nor false after the execution of the first line. It’s a function.

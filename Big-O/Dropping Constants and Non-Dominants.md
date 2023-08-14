# Understanding Big O Notation: Dropping Constants and Non-Dominants

When analyzing the time complexity of algorithms using Big O notation, we often simplify the notation by dropping constants and non-dominant terms. This practice helps us focus on the most significant factors that affect an algorithm's performance as the input size grows.

## Dropping Constants

In Big O notation, we ignore constant factors when describing an algorithm's time complexity. Whether an algorithm takes 2 * n or 1000 * n operations, it's still considered O(n). The reason for this is that constant factors have a relatively small impact on performance as the input size becomes large.

when we drop constants, we're not ignoring them; we're prioritizing the overarching essence of an algorithm's growth. It simplifies communication, aids in understanding, and helps us decipher the heart of an algorithm's efficiency as it tackles larger datasets.

#### Sample code


```
function logItems(n) {
     for(let i = 0; i < n; i++) {
        console.log(i) 
     }
 
     for(let j = 0; j < n; j++) {
        console.log(j) 
     }       
 }
 
 logItems(3)
```
"So our code ran 'n' plus 'n' times, or '2n'. So it makes sense to say that this is an O(2n) operation. However, this is where that simplification comes in. It doesn't matter if it's '2n', '3n', or '100n'; if there's a constant, we drop the constant. And we say that this code is O(n). So our first rule for simplifying our Big O notation: drop constants."

When analyzing algorithmic time complexity, it's common practice to drop constant factors and lower-order terms from the notation. This simplification doesn't affect the overall understanding of how an algorithm's performance scales as input size increases. It focuses on the dominant factor that contributes the most to the growth rate.

For example, let's consider the following two functions:

#### Sample Code

```javascript
function example1(arr) {
    for (let i = 0; i < arr.length; i++) {
        // Some code here
    }
}

function example2(arr) {
    for (let i = 0; i < arr.length; i++) {
        // Some code here
    }
    for (let j = 0; j < arr.length; j++) {
        // Some code here
    }
}
```
Both example1 and example2 have O(n) time complexity because they both have a loop that iterates through the array arr once. However, the second example might seem like it takes "twice as long" due to the additional loop. In Big O notation, we simplify this analysis by dropping constants, so both examples are O(n).

## Non-Dominants
When an algorithm has multiple terms in its time complexity expression, we focus on the most dominant term as the input size grows. Non-dominant terms have a diminishing impact on performance as the input size becomes large.
![Case study with array](https://github.com/vishnuabhi4/Data-Structure-JS/blob/Branch-One/Big-O/Assets/big-o-cases.png)

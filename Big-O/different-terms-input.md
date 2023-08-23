## Different terms for input
Consider the scenario where you have two nested for loops, each with different loop control variables, let's call them A and B. The first for loop runs A times, and the second for loop runs B times. Your goal is to determine the overall time complexity of this code snippet.

The key insight here is that you can't directly combine the complexities of the two loops using addition, as you would when you have two separate blocks of code. Instead, you need to consider the nested structure and express the complexity in terms of both A and B.

For the given code snippet, where you have two nested for loops, the time complexity would be O(A * B).

![Array-sample](https://github.com/vishnuabhi4/Data-Structure-JS/blob/main/Big-O/Assets/different-terms.png)

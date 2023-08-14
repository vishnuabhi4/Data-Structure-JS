
# BIG-O


1. Omega (Ω) Notation:
Omega notation represents the best-case scenario or lower bound of an algorithm's time complexity. It gives us the lower limit on the growth rate of an algorithm's runtime as the input size increases. In other words, Ω(g(n)) indicates that the algorithm will take at least as much time as g(n) as the input size grows.


2. Theta (Θ) Notation:
Theta notation represents the average or tight bound of an algorithm's time complexity. It provides a range within which the algorithm's performance falls as the input size increases. When an algorithm's time complexity is Θ(g(n)), it means that the algorithm's runtime grows at the same rate as g(n), both in the best and worst cases.

3. Omicron (O) Notation:
Omicron notation, often referred to as "Big O" notation, represents the upper bound of an algorithm's time complexity. It describes the maximum amount of time an algorithm will take to complete as the input size increases. It helps us understand how an algorithm's performance scales with larger inputs.


##Best Case Scenario:
---------------------
The best-case scenario occurs when the target element is found in the first position of the array. In this case, the algorithm would only need to make one comparison.

Worst Case Scenario:
The worst-case scenario occurs when the target element is not present in the array, or it's present in the last position. In this case, the algorithm would need to compare the target element against every element in the array until the last element is reached.
----------------------------------------------------------------------------------------
![Case study with array](https://github.com/vishnuabhi4/Data-Structure-JS/blob/Branch-One/Big-O/Assets/big-o-cases.png)

In this program, we're using the console.time and console.timeEnd functions to measure the execution time for each scenario.

When you run this program, you'll see that the best-case scenario takes significantly less time compared to the worst-case scenario. The best-case scenario's time complexity is O(1) since it takes constant time to find the target element. The worst-case scenario's time complexity is O(n) since it takes linear time, where "n" is the size of the array.


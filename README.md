# Ninety-Nine Problems in Swift

This is an adaptation of the *Ninety-Nine Prolog Problems]* in swift.


* [Lists](#lists)
* [Arithmetic](#arithmetic)
* [Logic and Codes](#logic-and-codes)
* [Binary Trees](#binary-trees)
* [Multiway Trees](#multiway-trees)
* [Graphs](#graphs)
* [Miscellaneous](#miscellaneous)

## Lists

Lists solutions are given for both linked list and array

### [P01](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift) **(*) Find the last element of a list**

```swift
$ Node(1, 2, 3, 4, 5, 6).last
6
$ [1, 2, 3, 4, 5, 6].last$
6
```

<!---
### [P02](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Find the last but one element of a list**

```swift
$ secondLast [1, 2, 11, 4, 5, 8, 10, 6]
10
```

When list is empty you should get exception as shown below.

```swift
$ secondLast []
*** Exception: Can't find secondLast element from a list with less than 2 elements
```

When list has one element

```swift
$ secondLast [1]
*** Exception: Can't find secondLast element from a list with less than 2 elements
```

### [P03](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Find the K'th element of a list**

```swift
$ kth [1,2,3,4,5] 3
4
```

### [P04](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Find the number of elements of a list**

```swift
$ length' [1..5]
5
```

`length'` is a valid function name in Haskell.

### [P05](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Reverse a list**

```swift
$ reverse' [1..5]
[5,4,3,2,1]
```
### [P06](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Find out whether a list is a palindrome**

```swift
$ isPalindrome ["x","a","m","a","x"]
True

$ isPalindrome [1,2,3,4,5]
False
```

### [P07](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Flatten a nested list structure**

```swift
$ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
[1,2,3,4,5]
```

### [P08](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Eliminate consecutive duplicates of list elements**

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed

```swift
$ compress ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]
["a","b","c","a","d","e"]
```

### [P09](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Pack consecutive duplicates of list elements into sublists**

If a list contains repeated elements they should be placed in separate sublists.

```swift
$ pack ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]
[["a","a","a","a"],["b"],["c","c"],["a","a"],["d"],["e","e","e","e"]]
```

### [P10](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Run-length encoding of a list**

Use the result of problem 1.09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

```
$ encode ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]
[(4,"a"),(1,"b"),(2,"c"),(2,"a"),(1,"d"),(4,"e")]
```

### [P11](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Modified run-length encoding**

Modify the result of problem 1.10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

```swift
$ encode_modified ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]
[Right (4,"a"),Left "b",Right (2,"c"),Right (2,"a"),Left "d",Right (4,"e")]
```

### [P12](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Decode a run-length encoded list**

```swift
$ decode [Right (4,"a"),Left "b",Right (2,"c"),Right (2,"a"),Left "d",Right (4,"e")]
["a","a","a","a","b","c","c","a","a","d","e","e","e","e"]
```

### [P13](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Run-length encoding of a list (direct solution)**

Implement the so-called run-length encoding data compression method directly. i.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them.

```
$ encode_direct ["a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e"]
[(4,"a"),(1,"b"),(2,"c"),(2,"a"),(1,"d"),(4,"e")]
```

### [P14](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Duplicate the elements of a list**

```swift
$ duplicate ["a","b","c","d"]
["a","a","b","b","c","c","d","d"]
```
### [P15](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Duplicate the elements of a list a given number of times**

```swift
$ duplicate ["a","b","c"] 3
["a","a","a","b","b","b","c","c","c"]
```

### [P16](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Drop every N'th element from a list**

```swift
$ dropEveryNth ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"] 3
["a","b","d","e","g","h","j","k"]
```
### [P17](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Split a list into two parts; the length of the first part is given**

```swift
$ split ["a", "b", "c", "d", "e", "f", "g", "h", "i", "k"] 3
(["a","b","c"],["d","e","f","g","h","i","k"])
```

### [P18](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Extract a slice from a list**

```swift
$ slice ["a", "b", "c", "d", "e", "f", "g", "h", "i", "k"] 3 7
["c","d","e","f"]
```

### [P19](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Rotate a list N places to the left**

```swift
$ rotate ["a", "b", "c", "d", "e", "f", "g", "h"] 3
["d","e","f","g","h","a","b","c"]

$ rotate ["a", "b", "c", "d", "e", "f", "g", "h"] (-2)
["g","h","a","b","c","d","e","f"]
```

### [P20](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Remove the K'th element from a list**

```swift
$ removeAt ["a", "b", "c", "d"] 2
(["a","c","d"],"b")
```

### [P21](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Insert an element at a given position into a list**

```swift
$ insertAt ["a", "b", "c", "d"] 2 "alfa"
["a","alfa","b","c","d"]
```

### [P22](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Create a list containing all integers within a given range**

```swift
$ range 4 9
[4,5,6,7,8,9]
```

### [P23](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Extract a given number of randomly selected elements from a list**

```swift
$ randomSelect ["a", "b", "c", "d", "e", "f", "g", "h"] 3
```

### [P24](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Lotto: Draw N different random numbers from the set 1..M**

> Hint: Combine the solutions of problems P22 and P23

```swift
$ randomSelect_lotto 6 (1,49)
[48,2,42,42,2,8]
```

### [P25](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Generate a random permutation of the elements of a list**

> Hint: Use the solution of problem P23

```swift
$ randomPermutation ["a", "b", "c", "d", "e", "f"]
["b","a","b","c","a","a"]
```

### [P26](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Generate the combinations of K distinct objects chosen from the N elements of a list**


```swift
$ combinations ["a", "b", "c", "d", "e", "f"] 3

[["a","b","c"],["a","b","d"],["a","c","d"],["b","c","d"],["a","b","e"],["a","c","e"],["b","c","e"],["a","d","e"],["b","d","e"],["c","d","e"],["a","b","f"],["a","c","f"],["b","c","f"],["a","d","f"],["b","d","f"],["c","d","f"],["a","e","f"],["b","e","f"],["c","e","f"],["d","e","f"]]
```

### [P27](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Group the elements of a set into disjoint subsets**

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a predicate that generates all the possibilities via backtracking

```swift
$ length (group3 ["aldo", "beat", "carla", "david", "evi", "flip", "gary", "hugo", "ida"])

1260
```

b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.


```swift
$ length(group' ["aldo", "beat", "carla", "david", "evi", "flip", "gary", "hugo", "ida"] [2,2,5])

756
```


### [P28](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Sorting a list of lists according to length of sublists**

a) We suppose that a list (InList) contains elements that are lists themselves. The objective is to sort the elements of InList according to their **length**. E.g. short lists first, longer lists later, or vice versa.

```swift
$ lsort [["a", "b", "c"], ["d", "e"], ["f", "g", "h"], ["d", "e"], ["i", "j", "k"], ["m", "n"], ["o"]]

[["o"],["d","e"],["d","e"],["m","n"],["a","b","c"],["f","g","h"],["i","j","k"]]
```

b) Again, we suppose that a list (InList) contains elements that are lists themselves. But this time the objective is to sort the elements of InList according to their **length frequency**; i.e. in the default, where sorting is done in ascending order, lists with rare lengths are placed first, others with a more frequent length come later.

```swift
$ lfsort [["a", "b", "c"], ["d", "e"], ["f", "g", "h"], ["d", "e"], ["i", "j", "k","l"], ["m", "n"], ["o"]]

[["o"],["i","j","k","l"],["a","b","c"],["f","g","h"],["d","e"],["d","e"],["m","n"]]
```

## Arithmetic

### [P31](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Determine whether a given integer number is prime.**

```swift
$ isPrime 7
True
```


### [P32](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Determine the prime factors of a given positive integer.**

```swift
$ primeFactors 315
[3,3,5,7]

$ primeFactors 33
[3,11]
```

### [P33](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Determine the prime factors of a given positive integer (2).**

```swift
$ primeFactorsMult 315
[[3,2],[5,1],[7,1]]
```

### [P34](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) A list of prime numbers**

```swift
$ primeNumbers [7..31]
[7,11,13,17,19,23,29,31]
```

### [P35](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Goldbach's conjecture**

```swift
$ goldbach 28
[5,23]
```

### [P36](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) A list of Goldbach compositions.**

Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

```swift
$ goldbach_list [9..20]
[(10,[3,7]),(12,[5,7]),(14,[3,11]),(16,[3,13]),(18,[5,13]),(20,[3,17])]
```

In most cases, if an even number is written as the sum of two prime numbers, one of them is very small. Very rarely, the primes are both bigger than say 50. Try to find out how many such cases there are in the range 2..3000.

```swift
$ goldbach_list1 50 [1..2000]
[(992,[73,919]),(1382,[61,1321]),(1856,[67,1789]),(1928,[61,1867])]
```
### [P37](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Determine the greatest common divisor of two positive integer numbers.**

```swift
$ gcd' 36 63
9
```

### [P38](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Determine whether two positive integer numbers are coprime.**

```swift
$ coprime 25 64
True
```

### [P39](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Calculate Euler's totient function phi(m).**

```swift
$ totient_phi 10
4
```

### [P40](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Calculate Euler's totient function phi(m) (2).**

See problem P39 for the definition of Euler's totient function. If the list of the prime factors of a number m is known in the form of problem 2.03 then the function phi(m) can be efficiently calculated as follows: Let `[[p1,m1],[p2,m2],[p3,m3],...]` be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula:

`phi(m) = (p1 - 1) * p1**(m1 - 1) * (p2 - 1) * p2**(m2 - 1) * (p3 - 1) * p3**(m3 - 1) * ...`

Note that a**b stands for the b'th power of a.

```
$ phi 10
4
$ phi 99
60
```

> Also you can import modules defined in 01-lists by starting ghci using the command `ghci -i../01-lists`

### [P41](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Compare the two methods of calculating Euler's totient function.**

Use the solutions of problems P39 and P40 to compare the algorithms. Take the number of logical inferences as a measure for efficiency. Try to calculate `phi(10090)` as an example.

### [P46](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Truth tables for logical expressions.**

Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed. Note that A and B can be Prolog goals (not only the constants true and fail).

A logical expression in two variables can then be written in prefix notation, as in the following example: and(or(A,B),nand(A,B)).

Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.

```
table (\a b -> (and' a (or' a b)))
[(True,True,True),(True,False,True),(False,True,False),(False,False,False)]
```

### [P47](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(*) Truth tables for logical expressions(2).**

Skipping this problem for now.

### [P48](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Truth tables for logical expressions(3).**

Skipping this problem for now.

### [P49](https://github.com/udaypandey/Ninety-Nine-Swift-Problems/blob/master/NinetyNineSwiftProblems/Solutions/P01.swift **(\*\*) Gray code.**

An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules. For example,
```
n = 1: C(1) = ['0','1'].
n = 2: C(2) = ['00','01','11','10'].
n = 3: C(3) = ['000','001','011','010','110','111','101','100'].
```

```swift
$ gray 3
["000","001","011","010","110","111","101","100"]
```


-->

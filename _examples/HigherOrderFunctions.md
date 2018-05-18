---
title: Higher-Order Functions
---

 A higher-order function is a function that takes another function as parameter and/or returns a function.

### Taking a function as parameter

<div class="sample" markdown="1">

```kotlin
fun calculate(x: Int, y: Int, operation: (Int, Int) -> Int): Int {  // 1
    return operation(x, y)                                          // 2
}

fun sum(x: Int, y: Int) = x + y                                     // 3

fun main(args: Array<String>) {
    val result = calculate(4, 5, ::sum)                             // 4
    println(result)
}

```
</div>

1. Declare a higher-order function that takes as parameter two integers, x and y. In addition it takes another function as parameter, named `operation`
that itself takes two parameters of type integer and returns an integer.
2. Invoke the function passing in the arguments supplied.
3. Declare a function that matches the same signature.
4. Invoke the higher-order function passing in as the function argument, `::sum` which is how we reference a function by name in Kotlin.

### Returning a function as parameter


<div class="sample" markdown="1">

```kotlin
fun operation(): (Int) -> Int {                                     // 1
    return ::square
}

fun square(x: Int) = x * x                                          // 2


1. Declare a higher-order function that returns a function.
2. Return a function matching the signature.
```
</div>
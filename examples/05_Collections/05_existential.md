# any, all, none

These functions check the existence of collection elements that match a given predicate.

### Function `any`

Function `any` returns `true` if the collection contains **at least one** element that matches the given predicate.

```run-kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)            // 1
    
    val anyNegative = numbers.any { it < 0 }             // 2
    
    val anyGT6 = numbers.any { it > 6 }                  // 3
//sampleEnd

    println("Numbers: $numbers")
    println("Is there any number less than 0: $anyNegative")
    println("Is there any number greater than 6: $anyGT6")
}
```

1. Defines a collection of numbers.
2. Checks if there are negative elements.
3. Checks if there are elements greater than `6`. 


### Function `all`

Function `all` returns `true` if **all** elements in collection match the given predicate.

```run-kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)            // 1
    
    val allEven = numbers.all { it % 2 == 0 }            // 2
    
    val allLess6 = numbers.all { it < 6 }                // 3
//sampleEnd

    println("Numbers: $numbers")
    println("All numbers are even: $allEven")
    println("All numbers are less than 6: $allLess6")
}
```

1. Defines a collection of numbers.
2. Checks whether all elements are even.
3. Checks whether all elements are less than `6`.


### Function `none`

Function `none` returns `true` if there are **no** elements that match the given predicate in the collection.

```run-kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)            // 1
    
    val allEven = numbers.none { it % 2 == 1 }           // 2
    
    val allLess6 = numbers.none { it > 6 }               // 3
//sampleEnd

    println("Numbers: $numbers")
    println("All numbers are even: $allEven")
    println("No element greater than 6: $allLess6")
}
```

1. Defines a collection of numbers.
2. Checks if there are no odd elements (all elements are even).
3. Checks if there are no elements greater than 6.
 

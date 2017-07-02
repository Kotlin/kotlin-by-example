---
title: Functions
---

<div class="sample" markdown="1">

```kotlin
//sampleStart
fun printMessage(message: String): Unit {                           // 1
    println(message)
}

fun printMessageWithPrefix(message: String, prefix : String = "") { // 2
    println("[$prefix] $message")
}

fun sum(x: Int, y: Int): Int {                                      // 3
    return x + y
}

fun multiply(x: Int, y: Int) = x * y                                // 4

fun main(args: Array<String>) {
    printMessage("Hello")                                           // 5                    
    printMessageWithPrefix("Hello", "Log")                          // 6
    printMessageWithPrefix("Hello")                                 // 7
    printMessageWithPrefix(prefix = "Log", message = "Hello")       // 8
    sum(1, 2)
}
//sampleEnd
```

</div>

1. Create a function that takes a parameter of type string and returns Unit (i.e. no return value).
2. Create a function that takes a second optional parameter with default value empty String. Also return Unit, which can be omitted.
3. Create a function that returns an integer.
4. Create a single-expression function that returns an integer (inferred).
5. Call a function passing as argument `Hello`.
6. Call a function with two parameters, passing a value for the second optional parameter.
7. Call a function with two parameters, ignoring the second one. 
8. Call a function using named parameters and changing order of arguments.

    
    
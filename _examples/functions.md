---
title: Functions
---

### Default parameter values and named arguments

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

### Infix functions

Member functions and extensions with a single parameter can be turned into infix functions.

<div class="sample" markdown="1">

```kotlin
fun main(args: Array<String>) {

  infix fun Int.times(str: String) = str.repeat(this)        // 1a
  println(2 times "Bye ")                                    // 1b

  val pair = "Ferrari" to "Katrina"                          // 2
  println(pair)

  infix fun String.onto(other: String) = Pair(this, other)   // 3a
  val myPair = "McLaren" onto "Lucas"                        // 3b
  println(myPair)

  val sophia = Person("Sophia")
  val claudia = Person("Claudia")
  sophia likes claudia                                       // 4a
}

data class Person(val name: String) {
  val likedPeople = mutableListOf<Person>()
  infix fun likes(other: Person) { likedPeople.add(other) }  // 4b
}
```

</div>

1. Defines an infix extension function on `Int` that can be called as in `1b`
2. The infix function `to` from the standard library lets you easily create `Pair`s
3. Here's your own implementation of `to` creatively called `onto`
4. Extensions also work on members functions (methods). Here, the containing class becomes the first parameter.
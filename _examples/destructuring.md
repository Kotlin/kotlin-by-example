---
title: Destructuring
---

_Destructuring declaration_ syntax can be very handy and save you few lines of code.

<div class="sample" markdown="1">

```kotlin
fun findMinMax(list: List<Int>): Pair<Int, Int> { 
    // do the math
    return Pair(50, 100) 
}

fun main(args: Array<String>) {
//sampleStart
    val (x, y, z) = arrayOf(5, 10, 15)                              // 1

    val map = mapOf("Alice" to 21, "Bob" to 25)
    for ((name, age) in map) {                                      // 2
        println("$name is $age years old")          
    }

    val (min, max) = findMinMax(listOf(100, 90, 50, 98, 76, 83))    // 3

//sampleEnd
}
```

</div>

1. Create a component on the left-hand side to match the arity of the right hand
2. it can be used to iterate through maps. _name_ and _age_ variables are mapped to key and value now
3. You can destructure built-in Pairs and Triples, even as return values from functions

<div class="sample" markdown="1">

```kotlin
//sampleStart
data class User(val username: String, val email: String)    // 1

fun getUser() = User("Mary", "mary@somewhere.com")

fun main(args: Array<String>) {
    val user = getUser()
    val (username, email) = user                            // 2
    println(username == user.component1())                  // 3

    val (_, email) = getUser()                              // 4
    
}
//sampleEnd
```

</div>

1. Define a data class that will be destructured later
2. Values mapped to object fields
3. Data class automatically defines the `component1()`, `component2()` corresponding methods, which will be called during destructuring
4. Use _underscore_ if you don't need one of the values, avoiding the compiler hint indicating unused variable    

    
    
# Destructuring Declarations

_Destructuring declaration_ syntax can be very handy and save you few lines of code.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun findMinMax(list: List<Int>): Pair<Int, Int> { 
    // do the math
    return Pair(50, 100) 
}

fun main() {
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
2. It can be used to iterate through maps. _name_ and _age_ variables are mapped to key and value now
3. You can destructure built-in Pairs and Triples, even as return values from functions

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
data class User(val username: String, val email: String)    // 1

fun getUser() = User("Mary", "mary@somewhere.com")

fun main() {
    val user = getUser()
    val (username, email) = user                            // 2
    println(username == user.component1())                  // 3

    val (_, emailAddress) = getUser()                       // 4
    
}
```

</div>

1. Define a data class that will be destructured later
2. Values mapped to object fields
3. Data class automatically defines the `component1()`, `component2()` corresponding methods, which will be called during destructuring
4. Use _underscore_ if you don't need one of the values, avoiding the compiler hint indicating unused variable    

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class Pair<K, V>(val first: K, val second: V) {  // 1
    operator fun component1(): K {              
        return first
    }

    operator fun component2(): V {              
        return second
    }
}

fun main() {
    val (num, name) = Pair(1, "one")             // 2

    println("num = $num, name = $name")
}
```

</div>

1. Define a custom `Pair` class with `component1()` and `component2()` methods
2. Destructure instances of this class same as built-in `Pair`

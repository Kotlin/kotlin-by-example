# Destructuring Declarations

[Destructuring declaration](https://kotlinlang.org/docs/reference/multi-declarations.html#destructuring-declarations) syntax can be very handy, especially when you need an instance only for accessing its members. It lets you define the instance without a specific name therefore saving a few lines of code.

```run-kotlin
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

1. Destructures an `Array`. The number of variables on the left side matches the number of arguments on the right side.
2. Maps can be destructured as well. `name` and `age` variables are mapped to the map key and value.
3. Built-in `Pair` and `Triple` types support destructuring too, even as return values from functions.

```run-kotlin
data class User(val username: String, val email: String)    // 1

fun getUser() = User("Mary", "mary@somewhere.com")

fun main() {
    val user = getUser()
    val (username, email) = user                            // 2
    println(username == user.component1())                  // 3

    val (_, emailAddress) = getUser()                       // 4
    
}
```

1. Defines a data class.
2. Destructures an instance. Declared values are mapped to the instance fields.
3. Data class automatically defines the `component1()` and `component2()` methods that will be called during destructuring.
4. Use _underscore_ if you don't need one of the values, avoiding the compiler hint indicating an unused variable.

```run-kotlin
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

1. Defines a custom `Pair` class with `component1()` and `component2()` methods.
2. Destructures an instance of this class the same way as for built-in `Pair`.

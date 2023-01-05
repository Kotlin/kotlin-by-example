# Functions

### Default Parameter Values and Named Arguments

```run-kotlin
fun printMessage(message: String): Unit {                               // 1
    println(message)
}

fun printMessageWithPrefix(message: String, prefix: String = "Info") {  // 2
    println("[$prefix] $message")
}

fun sum(x: Int, y: Int): Int {                                          // 3
    return x + y
}

fun multiply(x: Int, y: Int) = x * y                                    // 4

fun main() {
    printMessage("Hello")                                               // 5                    
    printMessageWithPrefix("Hello", "Log")                              // 6
    printMessageWithPrefix("Hello")                                     // 7
    printMessageWithPrefix(prefix = "Log", message = "Hello")           // 8
    println(sum(1, 2))                                                  // 9
    println(multiply(2, 4))                                             // 10
}
```

1. A simple function that takes a parameter of type `String` and returns `Unit` (i.e., no return value).
2. A function that takes a second [optional parameter with default value](https://kotlinlang.org/docs/reference/functions.html#default-arguments) `Info`. The return type is omitted, meaning that it's actually `Unit`.
3. A function that returns an integer.
4. A single-expression function that returns an integer (inferred).
5. Calls the first function with the argument `Hello`.
6. Calls the function with two parameters, passing values for both of them.
7. Calls the same function omitting the second one. The default value `Info` is used. 
8. Calls the same function using [named arguments](https://kotlinlang.org/docs/reference/functions.html#named-arguments) and changing the order of the arguments.
9. Prints the result of the `sum` function call.
10. Prints the result of the `multiply` function call.

### Infix Functions

Member functions and extensions with a single parameter can be turned into [infix functions](https://kotlinlang.org/docs/reference/functions.html#infix-notation).

```run-kotlin
fun main() {

  infix fun Int.times(str: String) = str.repeat(this)        // 1
  println(2 times "Bye ")                                    // 2

  val pair = "Ferrari" to "Katrina"                          // 3
  println(pair)

  infix fun String.onto(other: String) = Pair(this, other)   // 4
  val myPair = "McLaren" onto "Lucas"
  println(myPair)

  val sophia = Person("Sophia")
  val claudia = Person("Claudia")
  sophia likes claudia                                       // 5
}

class Person(val name: String) {
  val likedPeople = mutableListOf<Person>()
  infix fun likes(other: Person) { likedPeople.add(other) }  // 6
}
```

1. Defines an infix extension function on `Int`.
2. Calls the infix function.
3. Creates a `Pair` by calling the infix function `to` from the standard library.
4. Here's your own implementation of `to` creatively called `onto`.
5. Infix notation also works on members functions (methods).
6. The containing class becomes the first parameter.

Note that the example uses [local functions](https://kotlinlang.org/docs/reference/functions.html#local-functions) (functions nested within another function).

### Operator Functions

Certain functions can be "upgraded" to [operators](https://kotlinlang.org/docs/reference/operator-overloading.html), allowing their calls with the corresponding operator symbol.

```run-kotlin
fun main() {
//sampleStart
  operator fun Int.times(str: String) = str.repeat(this)       // 1
  println(2 * "Bye ")                                          // 2

  operator fun String.get(range: IntRange) = substring(range)  // 3
  val str = "Always forgive your enemies; nothing annoys them so much."
  println(str[0..14])                                          // 4
//sampleEnd
}
```

1. This takes the infix function from above one step further using the `operator` modifier.
2. The operator symbol for `times()` is `*` so that you can call the function using `2 * "Bye"`.
3. An operator function allows easy range access on strings.
4. The `get()` operator enables [bracket-access syntax](https://kotlinlang.org/docs/reference/operator-overloading.html#indexed).

### Functions with `vararg` Parameters

[Varargs](https://kotlinlang.org/docs/reference/functions.html#variable-number-of-arguments-varargs) allow you to pass any number of arguments by separating them with commas.

```run-kotlin
fun main() {
//sampleStart
    fun printAll(vararg messages: String) {                            // 1
        for (m in messages) println(m)
    }
    printAll("Hello", "Hallo", "Salut", "Hola", "你好")                 // 2
    
    fun printAllWithPrefix(vararg messages: String, prefix: String) {  // 3
        for (m in messages) println(prefix + m)
    }
    printAllWithPrefix(
            "Hello", "Hallo", "Salut", "Hola", "你好",
            prefix = "Greeting: "                                          // 4
    )

    fun log(vararg entries: String) {
        printAll(*entries)                                             // 5
    }
    log("Hello", "Hallo", "Salut", "Hola", "你好")
//sampleEnd
}
```

1. The `vararg` modifier turns a parameter into a vararg.
2. This allows calling `printAll` with any number of string arguments.
3. Thanks to named parameters, you can even add another parameter of the same type after the vararg. This wouldn't be allowed in Java because there's no way to pass a value.
4. Using named parameters, you can set a value to `prefix` separately from the vararg.
5. At runtime, a vararg is just an array. To pass it along into a vararg parameter, use the special spread operator `*` that lets you pass in `*entries` (a vararg of `String`) instead of `entries` (an `Array<String>`).

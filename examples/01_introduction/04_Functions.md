# Functions

### Default parameter values and named arguments

<div class="language-kotlin" theme="idea">

```kotlin
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

fun main() {
    printMessage("Hello")                                           // 5                    
    printMessageWithPrefix("Hello", "Log")                          // 6
    printMessageWithPrefix("Hello")                                 // 7
    printMessageWithPrefix(prefix = "Log", message = "Hello")       // 8
    sum(1, 2)
}
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

<div class="language-kotlin" theme="idea">

```kotlin
fun main(args: Array<String>) {

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

</div>

1. Defines an infix extension function on `Int`
2. Call infix function `1`
3. The infix function `to` from the standard library lets you easily create `Pair`s
4. Here's your own implementation of `to` creatively called `onto`
5. Extensions also work on members functions (methods).
6. The containing class becomes the first parameter.

Note that the example uses _local functions_ (functions nested into another function).

### Operator functions

Certain functions can be "upgraded" to operators, allowing to use them with the corresponding operator symbol.

<div class="language-kotlin" theme="idea">

```kotlin
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

</div>

1. This takes the infix function from above one step further using the `operator` modifier.
2. The operator symbol for `times()` is `*` so that you can call the function using `2 * "Bye"`
3. An operator function allowing easy range access on strings
4. The `get()` operator enables bracket-access syntax

### Functions with `vararg` parameters

Varargs allow passing any number of arguments by comma-separating them.

<div class="language-kotlin" theme="idea">

```kotlin
fun main() {
//sampleStart
  fun printAll(vararg messages: String) {                            // 1
    for (m in messages) println(m)
  }
  printAll("Hello", "Hallo", "Salut", "Hola", "你好")                 // 2

  fun printAllWithPrefix(vararg messages: String, prefix: String) {  // 3
    for (m in messages) println(prefix + m)
  }
  printAllWithPrefix("Hello", "Hallo", "Salut", "Hola", "你好",
    prefix = "Greeting: ")                                           // 4

  fun log(vararg entries: String) {
    printAll(*entries)                                               // 5
  }
//sampleEnd
}
```

</div>

1. The `vararg` modifier turns a parameter into a vararg.
2. This allows calling `printAll` with any number of string arguments.
3. Thanks to named parameters, you can even add another parameter of the same type after the vararg. This wouldn't be allowed in Java because there's no way to pass a value.
4. Using named parameters, you can set a value to `prefix` despite the vararg.
5. At runtime, a vararg is simply an array. To pass it along into a vararg parameter, you can use the special spread operator `*foo` to pass in `*entries` (a vararg of `String`) instead of `entries` (an `Array<String>`).

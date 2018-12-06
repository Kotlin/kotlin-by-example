# Enum Classes

[Enum classes](https://kotlinlang.org/docs/reference/enum-classes.html) are used to model types that represent a finite set of distinct values, such as directions, states, modes and so forth.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
enum class State {
    IDLE, RUNNING, FINISHED                           // 1
}

fun main() {
    val state = State.RUNNING                         // 2
    val message = when (state) {                      // 3
        State.IDLE -> "It's idle"
        State.RUNNING -> "It's running"
        State.FINISHED -> "It's finished"
    }
    println(message)
}

```

</div>

1. Defining a simple enum class with three enum instances. The number of instances is always finite and they are all distinct.
2. Accessing an enum instance via the class name.
3. With enums, the compiler can infer if a `when`-expression is exhaustive so that you don't need the `else`-case.

Enums may contain properties and methods like other classes, separated from the list of instances by a semicolon.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin

enum class Color(val rgb: Int) {                      // 1
    RED(0xFF0000),                                    // 2
    GREEN(0x00FF00),
    BLUE(0x0000FF),
    YELLOW(0xFFFF00);

    fun containsRed() = (this.rgb and 0xFF0000 != 0)  // 3
}

fun main() {
    val red = Color.RED
    println(red)                                      // 4
    println(red.containsRed())                        // 5
    println(Color.BLUE.containsRed())                 // 6
}

```

</div>

1. Defining an enum class with a property and a method.
2. Each instance must pass an argument for the constructor parameter.
3. Enum class members are separated from the instance definitions by a semicolon.
4. The default `toString` returns the name of the instance, here `"RED"`.
5. Calling a method on a enum instance.
6. Calling a method via enum class name.

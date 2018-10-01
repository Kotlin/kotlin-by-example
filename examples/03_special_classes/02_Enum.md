# Enum Classes

Enum classes are used to model types that represent a finite set of distinct values, such as directions, states, modes and so forth.

They may contain properties and methods like other classes, separated from the enum instances by a semicolon.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
enum class State {
    IDLE, RUNNING, FINISHED                           // 1
}

enum class Color(val rgb: Int) {                      // 2
    RED(0xFF0000),                                    // 3
    GREEN(0x00FF00),
    BLUE(0x0000FF),
    YELLOW(0xFFFF00);

    fun containsRed() = (this.rgb and 0xFF0000 != 0)  // 4
}

fun main() {
    val red = Color.RED                               // 5
    println(red)                                      // 6
    println(red.containsRed())
    println(Color.BLUE.containsRed())

    val state = State.RUNNING
    val message = when (state) {                      // 7
        State.IDLE -> "It's idle"
        State.RUNNING -> "It's running"
        State.FINISHED -> "It's finished"
    }
    println(message)
}

```

</div>

1. A simple enum class with three enum instances (note that instances are finite and distinct).
2. An enum class with a property and a method.
3. Each instance must pass an argument for the constructor parameter.
4. Members are separated from the instance definitions with a semicolon.
5. Enum instances are accessed directly via the class name.
6. The default `toString` returns the name of the instance, here `"RED"`.
7. With enums, the compiler can infer if a `when`-expression is exhaustive so that you don't need an `else`-case.

# Ranges

There is a set of tools for defining ranges in Kotlin. Let's have a brief look at them.

```run-kotlin
fun main() {
//sampleStart
    for(i in 0..3) {             // 1
        print(i)
    }
    print(" ")

    for(i in 2..8 step 2) {      // 2
        print(i)
    }
    print(" ")

    for (i in 3 downTo 0) {      // 3
        print(i)
    }
    print(" ")

//sampleEnd
}
```

1. Iterates over a range starting from 0 up to 3 (inclusive).
2. Iterates over a range with a custom increment step for consecutive elements.
5. Iterates over a range in _reverse_ order.

Char ranges are also supported: 

```run-kotlin
fun main() {
//sampleStart
    for (c in 'a'..'d') {        // 1
        print(c)
    }
    print(" ")

    for (c in 'z' downTo 's' step 2) { // 2
        print(c)
    }
    print(" ")

//sampleEnd
}
```

1. Iterates over a char range in alphabetical order.
2. Char ranges support `step` and `downTo` as well.

Ranges are also useful in `if` statements:

```run-kotlin
fun main() {
//sampleStart
    val x = 2
    if (x in 1..5) {            // 1
        print("x is in range from 1 to 5")
    }
    println()

    if (x !in 6..10) {          // 2
        print("x is not in range from 6 to 10")
    }
//sampleEnd
}
```

1. Checks if a value is in the range.
2. `!in` is the opposite of `in`.

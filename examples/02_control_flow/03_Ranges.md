# Ranges

There is a set of tools for defining ranges in Kotlin. Let's have a brief look at them.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
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

</div>

1. Iterating over a range starting from 0 up to 3 (inclusive).
2. Iterating over a range with a custom increment step for consecutive elements.
5. Iterating over a range in _reverse_ order.

Char ranges are also supported: 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
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

</div>

1. Iterating over a char range in alphabetical order.
2. Char ranges support `step` and `downTo` as well.

Ranges are also useful in `if` statements:

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {
//sampleStart
    val x = 2
    if (x in 1..10) {            // 1
        print(x)
    }
    print(" ")

    if (x !in 1..4) {            // 2
        print(y)
    }
//sampleEnd
}
```

</div>

1. Checking if a value is in the range.
2. `!in` is the opposite of `in`.

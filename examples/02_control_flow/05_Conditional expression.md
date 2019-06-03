# Conditional Expression

There is no ternary operator `condition ? then : else` in Kotlin. Instead, `if` may be used as an expression:

```kotlin
fun main() {
//sampleStart
    fun max(a: Int, b: Int) = if (a > b) a else b         // 1

    println(max(99, -42))
//sampleEnd
}
```

1. `if` is an expression here: it returns a value.

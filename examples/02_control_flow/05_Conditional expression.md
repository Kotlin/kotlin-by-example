# Conditional Expression

There is no ternary operator (condition ? then : else) in Kotlin instead `if` expression could be used in the same way.
Let's take a look

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {
//sampleStart
    fun max(a: Int, b: Int) = if (a > b) a else b         // 1

    println(max(99, -42))
//sampleEnd
}
```

</div>

1. `if` is an expression, i.e. it returns a value.

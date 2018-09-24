# Functions `min`, `max`

Return the smallest/largest element or null if there are no elements.

<div class="language-kotlin" theme="idea">

```kotlin
fun main() {

    val numbers = listOf(1, 2, 3)
    val empty = emptyList<Int>()

    println("Numbers: $numbers, min = ${numbers.min()} max = ${numbers.max()}") // 1
    println("Empty: $empty, min = ${empty.min()}, max = ${empty.max()}")        // 2
}
```

</div>

1. For non-empty collection functions return smallest and largest element.
2. For empty collection both functions return `null`.

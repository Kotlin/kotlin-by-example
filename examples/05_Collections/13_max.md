# min, max

`min` and `max` functions return the smallest and the largest element of a collection. If the collection is empty, they return `null`.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, 2, 3)
    val empty = emptyList<Int>()

    println("Numbers: $numbers, min = ${numbers.min()} max = ${numbers.max()}") // 1
    println("Empty: $empty, min = ${empty.min()}, max = ${empty.max()}")        // 2
//sampleEnd
}
```

</div>

1. For non-empty collection functions return the smallest and the largest element.
2. For empty collections both functions return `null`.

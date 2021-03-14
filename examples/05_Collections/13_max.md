# minOrNull, maxOrNull

`minOrNull` and `maxOrNull` functions return the smallest and the largest element of a collection. If the collection is empty, they return `null`.

```run-kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, 2, 3)
    val empty = emptyList<Int>()
    val only = listOf(3)

    println("Numbers: $numbers, min = ${numbers.minOrNull()} max = ${numbers.maxOrNull()}") // 1
    println("Empty: $empty, min = ${empty.minOrNull()}, max = ${empty.maxOrNull()}")        // 2
    println("Only: $only, min = ${only.minOrNull()}, max = ${only.maxOrNull()}")            // 3
//sampleEnd
}
```

1. For non-empty collection, functions return the smallest and the largest element.
2. For empty collections, both functions return `null`.
3. For collection with only one element, both functions return the same value.

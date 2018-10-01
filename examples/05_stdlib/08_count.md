# count

The extension function `count` returns either the total number of elements in collection or the number of elements matching the given predicate.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)            // 1
    
    val totalCount = numbers.count()                     // 2
    val evenCount = numbers.count { it % 2 == 0 }        // 3
//sampleEnd

    println("Total number of elements: $totalCount")
    println("Number of even elements: $evenCount")
}
```

</div>

1. Define collection of numbers.
2. Count total number of elements.
3. Count number of even elements.

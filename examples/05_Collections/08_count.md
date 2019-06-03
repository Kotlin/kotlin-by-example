# count

`count` functions returns either the total number of elements in a collection or the number of elements matching the given predicate.

```run-kotlin
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

1. Defines a collection of numbers.
2. Counts the total number of elements.
3. Counts the number of even elements.

# sorted

`sorted` returns a list of collection elements sorted according to their natural sort order (ascending).

`sortedBy` sorts elements according to natural sort order of the values returned by specified selector function.

```run-kotlin
import kotlin.math.abs

fun main() {

//sampleStart
    val shuffled = listOf(5, 4, 2, 1, 3, -10)                   // 1
    val natural = shuffled.sorted()                             // 2
    val inverted = shuffled.sortedBy { -it }                    // 3
    val descending = shuffled.sortedDescending()                // 4
    val descendingBy = shuffled.sortedByDescending { abs(it)  } // 5
//sampleEnd

    println("Shuffled: $shuffled")
    println("Natural order: $natural")
    println("Inverted natural order: $inverted")
    println("Inverted natural order value: $descending")
    println("Inverted natural order of absolute values: $descendingBy")
}
```

1. Defines a collection of shuffled numbers.
2. Sorts it in the natural order.
3. Sorts it in the inverted natural order by using `-it` as a selector function.
4. Sorts it in the inverted natural order by using `sortedDescending`.
5. Sorts it in the inverted natural order of items' absolute values by using `abs(it)` as a selector function.

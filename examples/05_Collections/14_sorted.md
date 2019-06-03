# sorted

`sorted` returns a list of collection elements sorted according to their natural sort order (ascending).

`sortedBy` sorts elements according to natural sort order of the values returned by specified selector function.

```run-kotlin
fun main() {

//sampleStart
    val shuffled = listOf(5, 4, 2, 1, 3)     // 1
    val natural = shuffled.sorted()          // 2
    val inverted = shuffled.sortedBy { -it } // 3
//sampleEnd

    println("Shuffled: $shuffled")
    println("Natural order: $natural")
    println("Inverted natural order: $inverted")
}
```

1. Defines a collection of shuffled numbers.
2. Sorts it in the natural order.
2. Sorts it in the inverted natural order by using `-it` as a selector function.

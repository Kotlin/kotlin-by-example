# sorted

`sorted` returns a list of all elements sorted according to their natural sort order.

`sortedBy` returns a list of all elements sorted according to natural sort order of the value returned by specified selector function.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
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

</div>

1. Define collection of shuffled numbers.
2. Sort it in natural order.
2. Sort it in inverted natural order.

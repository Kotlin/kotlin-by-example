# partition

This function splits the original collection into pair of lists, where first list contains elements for which predicate yielded `true`, while second list contains elements for which predicate yielded `false`.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)                // 1
    
    val (postives, negatives) = numbers.partition { it > 0 } // 2
//sampleEnd

    println("Numbers: $numbers")
    println("Positive numbers: $postives")
    println("Negative numbers: $negatives")
}
```

</div>

1. Define collection of numbers.
2. Use `partition` to split `numbers` into two lists with positive and negative numbers. Also apply destructuring to get members of returning `Pair`

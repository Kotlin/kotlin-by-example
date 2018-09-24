# Function `flatMap`

Returns a single list of all elements yielded from results of transform function being invoked on each element of original collection.

<div class="language-kotlin" theme="idea">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, 2, 3)                        // 1

    val tripled = numbers.flatMap { listOf(it, it, it) } // 2
//sampleEnd

    println("Numbers: $numbers")
    println("Transformed: $tripled")
}
```

</div>

1. Define collection of numbers.
2. Transform the collection repeating each element three times.

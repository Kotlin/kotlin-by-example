# find

Returns the first or last element matching the given predicate, or `null` if no such element was found.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val words = listOf("Lets", "find", "something", "in", "collection", "somehow")  // 1
    
    val first = words.find { it.startsWith("some") }                                // 2
    val last = words.findLast { it.startsWith("some") }                             // 3
    
    val nothing = words.find { it.contains("nothing") }                             // 4
//sampleEnd

    println("The first word starting with \"some\" is \"$first\"")
    println("The last word starting with \"some\" is \"$last\"")
    println("The first word containing \"nothing\" is ${nothing?.let { "\"$it\"" } ?: "null"}")
}
```

</div>

1. Define collection of different words.
2. Looking for the first word starting with "some".
3. Looking for the last word starting with "some".
4. Looking for the first word containing "nothing".

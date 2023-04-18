# find, findLast

The `find` and `findLast` functions return the first or the last collection element that matches the given predicate. If there are no such elements, these functions return `null`.


```run-kotlin
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

1. Defines a collection of words.
2. Looks for the first word starting with "some".
3. Looks for the last word starting with "some".
4. Looks for the first word containing "nothing".

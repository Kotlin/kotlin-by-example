# Set

A [Set](https://kotlinlang.org/docs/reference/collections.html) is an unordered collection that does not support duplicates. Like Lists and Maps, you can create a mutable set with `mutableSetOf()`, an immutable set with `setOf()` and a readonly view of a mutable set with the [Set&lt;T&gt;](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/-set/index.html) interface.  

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
val openIssues: MutableSet<String> = mutableSetOf("uniqueDescr1", "uniqueDescr2", "uniqueDescr3") // 1

fun addIssue(uniqueDesc: String): Boolean {                                                       
    return openIssues.add(uniqueDesc)                                                             // 2
}

fun getStatusLog(isAdded: Boolean): String {                                                       
    return if (isAdded) "registered correctly." else "marked as duplicate and rejected."          // 3
}

fun main() {
    val aNewIssue: String = "uniqueDescr4"
    val anIssueAlreadyIn: String = "uniqueDescr2" 

    println("Issue $aNewIssue ${getStatusLog(addIssue(aNewIssue))}")                              // 4
    println("Issue $anIssueAlreadyIn ${getStatusLog(addIssue(anIssueAlreadyIn))}")                // 5 
}
```

</div>

1. Creates a Set. 
2. Returns boolean, based on function element existence.  
3. Returns a string, based on function input parameter.
4. Prints a success message: it adds a new element to the Set.
4. Prints a failure message: it cannot add an element already in the Set.


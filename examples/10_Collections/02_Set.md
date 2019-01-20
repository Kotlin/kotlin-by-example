# Set

A [*Set*](https://kotlinlang.org/docs/reference/collections.html) is an unordered collection that does not support duplicates. Like Lists and Maps, you can create a mutable set with __mutableSetOf()__, an immutable set with __setOf()__ and a readonly view of a mutable set with the [Set&lt;T&gt;](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/-set/index.html) interface.  

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
val openIssues: MutableSet<String> = mutableSetOf("uniqueDescr1", "uniqueDescr2", "uniqueDescr3") // 1

fun addIssue(uniqueDesc: String): Boolean {                                                       // 2
    return openIssues.add(uniqueDesc)
}

fun getStatusLog(isAdded: Boolean): String {                                                      // 3 
    return if (isAdded) "registered correctly." else "marked as duplicate and rejected."
}

fun main() {
    val aNewIssue: String = "uniqueDescr4"
    val anIssueAlreadyIn: String = "uniqueDescr2" 

    println("Issue $aNewIssue ${getStatusLog(addIssue(aNewIssue))}")                              // 4
    println("Issue $anIssueAlreadyIn ${getStatusLog(addIssue(anIssueAlreadyIn))}")                 
}
```

</div>

1. Mutable set creation: we expect only unique elements 
2. Function wrapper on &lt;mutableSet&gt;__.add()__. This method allows to avoid duplicates returning a boolean: false if duplicate detected, otherwise true.  
3. An generic helper function: based on input *exit status*, it sends the related string to the logger
4. Given two possible scenarios (unique element added and duplicate not added), we print two different result strings.


# Map

A [*Map*](https://kotlinlang.org/docs/reference/collections.html) is collection of key/value pairs, where each key is unique and is used to retrieve the corresponding value. Like Lists and Sets, you can create a mutable map with __mutableMapOf()__, an immutable map with __mapOf()__ and a readonly view of a mutable map with the [Map&lt;K, V&gt;](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/-map/index.html) interface. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
const val POINTS_X_PASS: Int = 15
val EZPassAccounts: MutableMap<Int, Int> = mutableMapOf(1 to 100, 2 to 100, 3 to 100)   // 1
val EZPassReport: Map<Int, Int> = EZPassAccounts                                        // 2

fun updatePointsCredit(accountId: Int) {
    if (EZPassAccounts.containsKey(accountId)) {                                        // 3
        println("Updating $accountId...")                                               
        EZPassAccounts[accountId] = EZPassAccounts.getValue(accountId) + POINTS_X_PASS  // 4
    } else {
        println("Error: Trying to update a non-existing account ($accountId)")
    } 
}

fun accountsReport() {
    println("EZ-Pass report:")
    EZPassReport.forEach{                                                               // 5
        k, v -> println("ID $k: credit $v")
    }
}

fun main() {
    accountsReport()                                                                    // 6
    updatePointsCredit(1)                                                               // 7
    updatePointsCredit(1)                                                                
    updatePointsCredit(3)
    updatePointsCredit(5)
    accountsReport()                                                                    // 8

}
```

</div>

1. Creation of a mutable Map
2. *Readonly* view (immutable), points to the same Map and changes as the underlying MutableMap changes 
3. Accessing to a value if a key exists
4. Increment a value: read it and add a constant value
5. Read operations like iteration of key/value pairs is made on immutable variable
6. Read account points balance before updates
7. Update existing (and non-existing) accounts
8. Read report balance again: accounts are correctly updated
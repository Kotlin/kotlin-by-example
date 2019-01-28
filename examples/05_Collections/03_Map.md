# Map

A [Map](https://kotlinlang.org/docs/reference/collections.html) is collection of key/value pairs, where each key is unique and is used to retrieve the corresponding value. Like Lists and Sets, you can create a mutable map with `mutableMapOf()`, an immutable map with `mapOf()` and a readonly view of a mutable map with the [Map&lt;K, V&gt;](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.collections/-map/index.html) interface. 

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
        println("Error: Trying to update a non-existing account (id: $accountId)")
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
    updatePointsCredit(5)                                                               // 8 
    accountsReport()                                                                    // 9
}
```

</div>

1. Creates a mutable Map.
2. Creates a *readonly* view of the Map.
3. Checks if the Map's key exists.
4. Reads the corresponding value and increments it with a constant value.
5. Iterates immutable Map and prints key/value pairs.
6. Reads the account points balance, before updates.
7. Updates an existing account, two times.
8. Tries to update a non-existing account: prints an error message. 
9. Reads the account points balance, after updates.
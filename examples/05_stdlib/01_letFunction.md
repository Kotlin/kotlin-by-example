# let

**let** is a useful function defined in Kotlin Standard Library. It can be used for scoping and null-checks. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
var i = 0
fun funWithSideEffect(): String = ".".repeat(i++)

fun getNullableString0(): String? = null
fun getNullableString1(): String? = null

fun main() {
//sampleStart
    val r = funWithSideEffect().let {
        it.isEmpty() || it.contains("Kotlin")                      // 1
    }
    println("r = $r")

    fun checkNullableString(ns: String?) {
        println("for \"$ns\":")
        
        ns?.let {                                                  // 2
            println("\tis empty? " + it.isEmpty())
            println("\tcontains Kotlin? " + it.contains("Kotlin"))
        }
    }
    checkNullableString(null)
    checkNullableString("")
    checkNullableString("some string with Kotlin")
//sampleEnd
}
```

</div>


1. Result of `funWithSideEffect` is now accessible by reference `it`.
2. Use safe call, so `let` and its code block will be executed only with non-null value.   

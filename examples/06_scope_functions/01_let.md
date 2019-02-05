# let

`let` is a Kotlin standard library function that can be used for scoping and null-checks. When called on an object, `let` executes the given functional block and returns the result of its last expression.
The object is accessible inside the block by the reference `it`. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
var i = 0
fun funWithSideEffect(): String = ".".repeat(i++)

fun main() {
//sampleStart
    val r = funWithSideEffect().let {                              // 1
        it.isEmpty() || it.contains("Kotlin")                      // 2
    }
    println("r = $r")

    fun checkNullableString(ns: String?) {
        println("for \"$ns\":")
        
        ns?.let {                                                  // 3
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

1. Calls the given block on the result of `funWithSideEffect()`.
2. `it` refers to the result of `funWithSideEffect`.
3. Uses safe call, so `let` and its code block will be executed only with non-null value.   

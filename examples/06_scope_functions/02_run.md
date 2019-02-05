# run

Like [`let`](01_let.md), `run` is another scoping function from the standard library. Basically, it does the same: executes a code block and returns its result. 
The difference is that inside `run` the object is accessed by `this`. This is useful when you want to call the object's methods rather than pass it as an argument.<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin

fun main() {
//sampleStart
    fun getNullableLength(ns: String?) {
        println("for \"$ns\":")
        ns?.run {                                                  // 1
            println("\tis empty? " + isEmpty())                    // 2
            println("\tlength = $length")                           
            length                                                 // 3
        }
    }
    getNullableLength(null)
    getNullableLength("")
    getNullableLength("some string with Kotlin")
//sampleEnd
}
```

</div>


1. Calls the given block on a nullable variable.
2. Inside `run`, the object's members are accessed without its name.
3. `run` returns the `length` of the given `String` if it's not `null`.     

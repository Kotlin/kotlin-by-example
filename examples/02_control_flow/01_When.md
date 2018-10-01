# When

Kotlin do not have `switch` statement, instead of it it has more smart and clear `when` construction. Let's take a look

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {
    cases("Hello")
    cases(1)
    cases(0L)
    cases(MyClass())
    cases("hello")
}

fun cases(obj: Any) {
    when (obj) {
        1 -> println("One")                          // 1
        "Hello" -> println("Greeting")               // 2
        is Long -> println("Long")                   // 3
        !is String -> println("Not a string")        // 4
        else -> println("Unknown")                   // 5
    }
}

class MyClass
```

</div>


1. Check whether `obj` equals to `1`
2. Check for string
3. Or even instance check
4. Negative instance check
5. Default statement (might be omitted)

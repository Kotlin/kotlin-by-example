# Null Safety

In an effort to rid the world of `NullPointerException`, variable types in Kotlin don't allow the assignment of `null`.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {
//sampleStart
    var neverNull: String = "This can't be null"            // 1
    
    neverNull = null                                        // 2
    
    var nullable: String? = "You can keep a null here"      // 3
    
    nullable = null                                         // 4
    
    var inferredNonNull = "The compiler assumes non-null"   // 5
    
    inferredNonNull = null                                  // 2
//sampleEnd
}
```

</div>

1. Declare a non-`null` String variable.
2. Trying to assign `null` to non-nullable variable produces a compilation error. 
3. Declare a nullable String variable.
4. Set the nullable variable to `null`.
5. When inferring types, the compiler assumes non-`null` for variables that are initialized with a value.

## Working with nulls

Sometimes Kotlin programs need to work with null values, such as when interacting with external Java code or
representing a truly absent state.  Kotlin provides null tracking to elegantly deal with such situations.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
//sampleStart
fun describeString(maybeString: String?): String {              // 1
    if (maybeString != null && maybeString.length > 0) {        // 2
        return "String of length ${maybeString.length}"
    } else {
        return "Empty or null string"
    }
}
//sampleEnd

fun main() {
    println(describeString(null))
}
```

</div>


1. A function that takes in a nullable String and gives you a phrase describing it
2. If the given String is not `null` and not empty, tell the caller about it's length

    
    

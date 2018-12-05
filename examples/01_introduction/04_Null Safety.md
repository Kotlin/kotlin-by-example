# Null Safety

In an effort to rid the world of `NullPointerException`, variable types in Kotlin don't allow the assignment of `null`. If you need a variable that can be null, declare it nullable by adding `?` at the end of its type.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {
//sampleStart
    var neverNull: String = "This can't be null"            // 1
    
    neverNull = null                                        // 2
    
    var nullable: String? = "You can keep a null here"      // 3
    
    nullable = null                                         // 4
    
    var inferredNonNull = "The compiler assumes non-null"   // 5
    
    inferredNonNull = null                                  // 6
    
    fun strLength(notNull: String): Int {                   // 7
        return notNull.length
    }
    
    strLength(notNull)                                      // 8
    strLength(nullable)                                     // 9
//sampleEnd
}
```

</div>

1. Declaring a non-`null` String variable.
2. Trying to assign `null` to non-nullable variable produces a compilation error. 
3. Declaring a nullable String variable.
4. Setting the `null` value to the nullable variable is OK.
5. When inferring types, the compiler assumes non-`null` for variables that are initialized with a value.
6. Trying to assign `null` to a variable with inferred type produces a compilation error.
7. Declaring a function with a non-`null` string parameter.
8. Calling the function with a `String` (non-nullable) argument is OK.
9. Calling the function with a `String?` (nullable) argument produces a compilation error.

## Working with Nulls

Sometimes Kotlin programs need to work with null values, such as when interacting with external Java code or
representing a truly absent state. Kotlin provides null tracking to elegantly deal with such situations.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
//sampleStart
fun describeString(maybeString: String?): String {              // 1
    if (maybeString != null && maybeString.length > 0) {        // 2
        return "String of length ${maybeString.length}"
    } else {
        return "Empty or null string"                           // 3
    }
}
//sampleEnd

fun main() {
    println(describeString(null))
}
```

</div>

1. A function that takes in a nullable string and returns its description.
2. If the given string is not `null` and not empty, return information about its length.
3. Otherwise, tell the caller that the string is empty or null.

    
    

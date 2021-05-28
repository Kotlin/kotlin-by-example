# Null Safety

In an effort to rid the world of `NullPointerException`, variable types in Kotlin don't allow the assignment of `null`. If you need a variable that can be null, declare it nullable by adding `?` at the end of its type.

```run-kotlin
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
    
    strLength(neverNull)                                    // 8
    strLength(nullable)                                     // 9
//sampleEnd
}
```

1. Declares a non-`null` String variable.
2. When trying to assign `null` to non-nullable variable, a compilation error is produced. 
3. Declares a nullable String variable.
4. Sets the `null` value to the nullable variable. This is OK.
5. When inferring types, the compiler assumes non-`null` for variables that are initialized with a value.
6. When trying to assign `null` to a variable with inferred type, a compilation error is produced.
7. Declares a function with a non-`null` string parameter.
8. Calls the function with a `String` (non-nullable) argument. This is OK.
9. When calling the function with a `String?` (nullable) argument, a compilation error is produced.

## Working with Nulls

Sometimes Kotlin programs need to work with null values, such as when interacting with external Java code or
representing a truly absent state. Kotlin provides null tracking to elegantly deal with such situations.

```run-kotlin
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

1. A function that takes in a nullable string and returns its description.
2. If the given string is not `null` and not empty, return information about its length.
3. Otherwise, tell the caller that the string is empty or null.

    
    

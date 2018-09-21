#Null Safety

In an effort to rid the world of `NullPointerException`, variable types in Kotlin don't allow the assigment of `null`.

<div class="language-kotlin" theme="idea">

```kotlin
//sampleStart
fun main(args: Array<String>) {
    var neverNull: String = "This can't be null"            // 1
    
    var nullable: String? = "You can keep a null here"      // 2
    
    nullable = null                                         // 3
    
    var inferredNonNull = "The compiler assumes non-null"   // 4

}
//sampleEnd
```

</div>

1. Declare a non-`null` String variable
2. Declare a nullable String variable
3. Set the nullable variable to `null`
4. When infering types, the compiler assumes non-`null` for variables that are initialized with a value

## Working with nulls

Sometimes Kotlin programs need to work with null values, such as when interacting with external Java code or
representing a truly absent state.  Kotlin provides null tracking to elegantly deal with such situations.

<div class="language-kotlin" theme="idea">
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

fun main(args: Array<String>) {
    println(describeString(null))
}
```
</div>


1. A function that takes in a nullable String and gives you a phrase describing it
2. If the given String is not `null` and not empty, tell the caller about it's length

    
    

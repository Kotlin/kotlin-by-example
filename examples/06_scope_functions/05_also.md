# also

`also` works like [`apply`](04_apply): it executes a given block and returns the object called.
Inside the block, the object is referenced by `it`, so it's easier to pass it as an argument.
This function is handy for embedding additional actions, such as logging in call chains. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
data class Person(var name: String, var age: Int, var about: String) {
             constructor() : this("", 0, "")
}
         
fun writeCreationLog(p: Person) {
    println("A new person ${p.name} was created.")              
}
         
fun main() {
//sampleStart
    val jake = Person("Jake", 30, "Android developer")   // 1
        .also {                                          // 2 
            writeCreationLog(it)                         // 3
    }
//sampleEnd
}
```

</div>

1. Creates a `Person()` object with the given property values.
2. Applies the given code block to the object. The return value is the object itself. 
3. Calls the logging function passing the object as an argument. 

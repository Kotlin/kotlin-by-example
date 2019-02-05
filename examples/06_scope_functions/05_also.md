# also

`also` works quite like [`apply`](04_apply.md): it executes a given block and returns the called object.
Inside the block, the object is referenced by `it`, so it's easier to pass it as an agrument.
This function is handy for embedding side effects, such as logging, in call chains. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
data class Person(var name: String, var age: Int, var about: String) {
             constructor() : this("", 0, "")
}
         
fun writeCreationLog(p: Person) {
    println("A new person ${p.name} was is created.")              
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

1. Creates a `Person()` object with given property values.
2. Applies the given functional block to the object. The return value is the object itself. 
3. Inside `also`, `it.name` reads as `jake.name`.

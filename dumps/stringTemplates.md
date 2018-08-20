---
title: 'String Templates'
---

<div class="sample">

```kotlin
fun main(args: Array<String>) {
//sampleStart
    val greeting = "Kotliner"
    
    println("Hello $greeting")                  // 1 
    println("Hello ${greeting.toUpperCase()}")  // 2
//sampleEnd
}
```

</div>

1. *Strings* in Kotlin can include references to variables that are interpolated
2. In addition to simple variable references, they can also include any expression enclosed in curly braces.


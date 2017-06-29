---
title: 'String Templates'
---

<div class="sample" markdown="1">

```kotlin
fun main(args: Array<String>) {
//sampleStart
val greeting = "Kotliner"

println("Hello $greeting") //1
//sampleEnd
}
```

</div>

1. *Strings* in Kotlin can include references to variables that are interpolated



<div class="sample" markdown="1">

```kotlin
fun main(args: Array<String>) {
//sampleStart
val greeting = "Kotliner"

println("Hello ${greeting.toUpperCase()}") //1
//sampleEnd
}
```

</div>

1. In addition to simple variable references, they can also include any expression enclosed in curly braces.


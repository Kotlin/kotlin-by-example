# map

*map* extension function enables you to apply a transformation to all elements in a collection. It takes a transformer function as a lambda-parameter.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)     // 1
    
    val doubled = numbers.map { x -> x * 2 }      // 2
    
    val tripled = numbers.map { it * 3 }          // 3
//sampleEnd

    println("Numbers: $numbers")
    println("Doubled Numbers: $doubled")
    println("Tripled Numbers: $tripled")
}
```

</div>

1. Defining a  collection of numbers.
2. Doubling numbers.
3. Or using the shorter `it` notation to triple the numbers. 

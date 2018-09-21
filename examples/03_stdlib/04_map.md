# Function `map`

*map* is an extension function defined in the standard library that can be used to transform collection into another collection. It takes a transformer as an lambda-paramters.

<div class="language-kotlin" theme="idea">
```kotlin
fun main(args: Array<String>) {

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

1. Define collection of numbers.
2. Double numbers.
3. Or using even shorter way to triple numbers. 

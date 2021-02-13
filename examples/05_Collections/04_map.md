# map

*map* extension function enables you to apply a transformation to all elements in a collection. It takes a transformer function as a lambda-parameter.

```run-kotlin
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

1. Defines a  collection of numbers.
2. Doubles numbers.
3. Uses the shorter `it` notation to triple the numbers. 

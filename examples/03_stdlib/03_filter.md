# Function `filter`

*filter* is a function defined in the standard library that can be used to filter collection. It takes a predicate as an lambda-paramters. 

<div class="language-kotlin" theme="idea">
```kotlin
fun main(args: Array<String>) {

//sampleStart
    val numbers = listOf(1, -2, 3, -4, 5, -6)      // 1
    
    val positives = numbers.filter { x -> x > 0 }  // 2
    
    val negatives = numbers.filter { it < 0 }      // 3
//sampleEnd

    println("Numbers: $numbers")
    println("Positive Numbers: positives")
    println("Negative Numbers: negatives")
}
```
</div>

1. Define collection of numbers.
2. Filter negative numbers.
3. Or using even shorter way to filter positive numbers. 

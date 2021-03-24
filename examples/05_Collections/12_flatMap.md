# flatMap

`flatMap` transforms each element of a collection into an iterable object and builds a single list of the transformation results. The transformation is user-defined. 

```run-kotlin
fun main() {

//sampleStart
    val fruitsBag = listOf("apple","orange","banana","grapes")  // 1
    val clothesBag = listOf("shirts","pants","jeans")           // 2
    val cart = listOf(fruitsBag, clothesBag)                    // 3
    val mapBag = cart.map { it }                                // 4
    val flatMapBag = cart.flatMap { it }                        // 5
//sampleEnd

    println("Your bags are: $mapBag")
    println("The things you bought are: $flatMapBag")
}
```

1. Defines a collection of Strings with fruit names.
2. Defines a collection of Strings with clothes names.
3. Adds `fruitsBag` and `clothesBag` to the `cart` list.
4. Builds a `map` of `cart` elements, which is a list of two lists.
5. Builds a `flatMap` of `cart` elements, which is a single list consisting of elements from both lists.
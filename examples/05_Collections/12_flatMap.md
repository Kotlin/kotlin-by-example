# flatMap

`flatMap` transforms each element of a collection into an iterable object and builds a single list of the transformation results. The transformation is user-defined. 

```run-kotlin
fun main() {

//sampleStart
    val FruitsBag = listOf("apple","orange","banana","grapes")// 1
    val ClothesBag = listOf("shirts","pants","jeans")// 2
    val Cart = listOf(FruitsBag,ClothesBag)// 3
    val Bag=Cart.map{it}// 4
    val ShoppingBag=Cart.flatMap{it}// 5
//sampleEnd

    println(ShoppingBag)
    println(Bag)
}
```

1. Defines a collection of Strings with fruit names.
2. Defines a collection of Strings with clothes names.
3. Adds 'FruitsBag & ClothesBag' to Cart list.
4. Builds map of Cart elements, which is list of list
5. Builds faltMap of Cart elements, which is not list of list but infact is single list consisting elements from both lists.


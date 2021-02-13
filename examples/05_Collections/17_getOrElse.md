# getOrElse

`getOrElse` provides safe access to elements of a collection. It takes an index and a function that provides the  default value 
in cases when the index is out of bound.

```run-kotlin
fun main() {

//sampleStart
    val list = listOf(0, 10, 20)
    println(list.getOrElse(1) { 42 })    // 1
    println(list.getOrElse(10) { 42 })   // 2
//sampleEnd
}
```

1. Prints the element at the index `1`.
2. Prints `42` because the index `10` is out of bounds. 

`getOrElse` can also be applied to `Map` to get the value for the given key. 

```run-kotlin
fun main() {

//sampleStart
    val map = mutableMapOf<String, Int?>()
    println(map.getOrElse("x") { 1 })       // 1
    
    map["x"] = 3
    println(map.getOrElse("x") { 1 })       // 2
    
    map["x"] = null
    println(map.getOrElse("x") { 1 })       // 3
//sampleEnd
}
```

1. Prints the default value because the key `"x"` is not in the map.
2. Prints `3`, the value for the key `"x"`.
3. Prints the default value because the value for the key `"x"` is not defined.

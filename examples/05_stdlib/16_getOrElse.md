# getOrElse

Provides safe access to elements of collection. It takes index and a function that computes default value 
in cases when index is out of bound.


<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val list = listOf(0, 10, 20)
    println(list.getOrElse(1) { 42 })    // 1
    println(list.getOrElse(10) { 42 })   // 2
//sampleEnd
}
```

</div>

1. Prints element at index `1`
2. Prints `42` because index `10` is out of bounds 

`getOrElse` can also be applied to `Map` to get value for given key. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart
    val map = mutableMapOf<String, Int?>()
    println(map.getOrElse("x") { 1 })       // 1
    
    map["x"] = 3
    println(map.getOrElse("x") { 1 })       // 2
    
    map["x"] = null
    println(map.getOrElse("x") { 1 })       // 1
//sampleEnd
}
```

</div>


1. Prints default value because value for key `"x"` is absent
2. Prints `3`, value for key `"x"`

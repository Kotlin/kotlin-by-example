# Map element access

`[]` operator returns value corresponding to the given key, or `null` if such a key is not present in the map  

`getValue` function returns an existing value corresponding to the given key or throws an exception,
 mentioning which key was not found.
 
If the map was produced with withDefault, this function will return the default value instead of throwing an exception.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main(args: Array<String>) {

//sampleStart
    val map = mapOf("key" to 42)
    
    val value1 = map["key"]                                     // 1
    val value2 = map["key2"]                                    // 2

    val value3: Int = map.getValue("key")                       // 1

    val mapWithDefault = map.withDefault { k -> k.length }
    val value4 = mapWithDefault.getValue("key2")                // 3
    
    try {
        map.getValue("anotherKey")                              // 4
    }
    catch (e: NoSuchElementException) {
        println("Message: $e")
    }

//sampleEnd

    println("value1 is $value1")
    println("value2 is $value2")
    println("value3 is $value3")
    println("value4 is $value4")
}
```

</div>

1. Produces 42 because `"key"` is present in map
2. Produces `null` because `"key2"` is absent.
3. Produces default value of 4 because `"key2"` is absent.
4. Throws NoSuchElementException because `"anotherKey"` is not in the map

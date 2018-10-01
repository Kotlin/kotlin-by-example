# with

*with* is a function defined in the standard library that can be used to access members of an object in a more concise way, avoiding having to
prefix each member with the instance name. 

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
class Configuration(var host: String, var port: Int) 

fun main() {
    val configuration = Configuration(host = "127.0.0.1", port = 9000) 

//sampleStart
    with(configuration) {
        println("$host:$port")
    }

    // instead of:
    println("${configuration.host}:${configuration.port}")    
//sampleEnd
}
```

</div>

# with

*with* function lets you access members of an object in a short and concise way. Inside the `with` block you can refer to object members without specifying its name as a prefix. 

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

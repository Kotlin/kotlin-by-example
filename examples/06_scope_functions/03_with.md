

# with

`with` is a non-extension function that can access members of its argument concisely: you can omit the instance name when referring to its members. 

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

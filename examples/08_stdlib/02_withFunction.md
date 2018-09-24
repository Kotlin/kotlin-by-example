# with
    
*with* is a function defined in the standard library that can be used to access members of an object in a more concise way, avoiding having to
prefix each member with the instance name. 

<div class="language-kotlin" theme="idea">

```kotlin
class Configuration(var host: String = "", var port: Int = 0, var isSSL: Boolean = false) 

fun main() {

    val configuration = Configuration() 
    with(configuration) {
        host = "127.0.0.1"
        port = 9000            
        isSSL = true
    }

    println(configuration.host)
}
```

</div>

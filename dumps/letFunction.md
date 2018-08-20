# Let Function

    
*let()* is a useful function defined in Kotlin standard library. It can be used for scoping and null-checks. 

<div class="language-kotlin" theme="idea" markdown="1">

```kotlin
import java.io.File

fun main(args: Array<String>) {
//sampleStart
File("input.txt").let {
    it.exists()                     // 1
}
//sampleEnd
}
```

</div>


1. file object is now accessible by reference `it`    
    
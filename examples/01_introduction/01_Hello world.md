# Hello world

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
package org.kotlinlang.play         // 1

fun main() {                        // 2
    println("Hello, World!")        // 3
}
```

</div>

1. Kotlin code is usually defined in packages. If you don't define one, the default package will be used.
2. The main entry point to a Kotlin application is a function called *main* and 
since Kotlin 1.3 it can be a function without any parameters. 
3. `println` writes to standard output and is implicitly imported;
also, note that semicolons are optional.

For Kotlin versions earlier than 1.3 the `main` function must be defined with a parameter:
    
<div class="language-kotlin" theme="idea">

```kotlin
fun main(args: Array<String>) {
    println("Hello, World!")
}
```

</div>

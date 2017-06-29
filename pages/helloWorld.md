---
path: '/hello-world'
title: 'Hello World'
type: 'BASIC'
---

<div class="sample" markdown="1">

```kotlin
package org.kotlin.byexample // 1

fun main(args: Array<String>) { // 2
    println("Hello, World!") // 3
}
```

</div>


1.  Kotlin code is usually defined in packages. If you don't define one, the default package will be used
2. The main entry point to a Kotlin application is a function called *main*
3. `println` writes to standard output and is implicitly imported

### Output

```
Hello World!
```
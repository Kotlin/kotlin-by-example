# Hello World

```run-kotlin
package org.kotlinlang.play         // 1

fun main() {                        // 2
    println("Hello, World!")        // 3
}
```

1. Kotlin code is usually defined in packages. Package specification is optional: If you don't specify a package in a source file, its content goes to the default package.
2. An entry point to a Kotlin application is the `main` function. You can declare it without any parameters. The return type is not specified, which means that the function returns nothing. 
3. `println` writes a line to the standard output. It is imported implicitly. Also, note that semicolons at the end of code lines are optional.


# String Templates

[String templates](https://kotlinlang.org/docs/reference/basic-types.html#string-templates) allow you to include variable references and expressions into strings. When the value of a string is requested (for example, by `println`), all references and expressions are substituted with actual values.

```run-kotlin
fun main() {
//sampleStart
    val greeting = "Kotliner"
    
    println("Hello $greeting")                  // 1 
    println("Hello ${greeting.toUpperCase()}")  // 2
//sampleEnd
}
```

1. Prints a string with a variable reference. References in strings start with `$`.
2. Prints a string with an expression. Expressions start with `$` and are enclosed in curly braces.


# Named Arguments

As most of programming languages (Java, C++, and other), Kotlin supports passing arguments to methods and constructors according to their order of definition.
Kotlin also supports [named arguments](https://kotlinlang.org/docs/reference/functions.html#named-arguments) to allow clearer invocations and avoid mistakes in arguments order. Such mistakes are hard to find because they are not detected by the compiler, for example, if two sequential arguments have the same type.
<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun format(userName: String, domain: String) = "$userName@$domain"

fun main() {
//sampleStart
    println(format("mario", "example.com"))                         // 1
    println(format("domain.com", "username"))                       // 2
    println(format(userName = "foo", domain = "bar.com"))           // 3
    println(format(domain = "frog.com", userName = "pepe"))         // 4
//sampleEnd
}
```

</div>

1. Calling a function with argument values.
2. Calling a function with switched arguments. No syntax errors, but the result _domain.com@username_ is incorrect.
3. Calling a function with named arguments.   
4. When invoking a function with named arguments, you can specify them in any order you like.

# Named Arguments

<div class="language-kotlin" theme="idea">
```kotlin
fun format(userName: String, domain: String) = "$userName@$domain"

fun main(args: Array<String>) {
//sampleStart
    println(format("mario", "example.com"))                         // 1
    println(format(userName = "foo", domain = "bar.com"))           // 2
    println(format(domain = "frog.com", userName = "pepe"))         // 3
//sampleEnd
}
```
</div>

1. As most of programming languages(Java, C++ etc), Kotlin supports passing arguments to methods and constructors
    according to their order of definition.
2. Kotlin also supports named arguments to allow clearer invocations and avoid
    mistakes that otherwise would not be detected by the compiler (e.g.
    switching the correct order of the arguments and constructing an email in
    the form _gmail.com@username_).
3. When invoking a method or constructor, named arguments do not have to
    respect the original order of definition.

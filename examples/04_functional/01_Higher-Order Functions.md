# Higher-Order Functions

A [*higher-order function*](https://kotlinlang.org/docs/reference/lambdas.html) is a function that takes another function as parameter and/or returns a function.

### Taking Functions as Parameters

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun calculate(x: Int, y: Int, operation: (Int, Int) -> Int): Int {  // 1
    return operation(x, y)                                          // 2
}

fun sum(x: Int, y: Int) = x + y                                     // 3

fun main() {
    val sumResult = calculate(4, 5, ::sum)                          // 4
    val mulResult = calculate(4, 5) { a, b -> a * b }               // 5
    println("sumResult $sumResult, mulResult $mulResult")
}
```

</div>

1. Declaring a higher-order function. It takes two integer parameters, `x` and `y`. Additionally, it takes another function `operation` as a parameter. The `operation` parameters and return type are also defined in the declaration.
2. The higher order functions returns the result of `operation` invocation with the supplied agruments.
3. Declaring a function that matches the `operation`signature.
4. Invoking the higher-order function passing in two integer values and the function argument `::sum`. `::` is the notation that  references a function by name in Kotlin.
5. Invoking the higher-order function passing in a lambda as a function argument. Looks more clear, doesn't it?

### Returning Functions

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun operation(): (Int) -> Int {                                     // 1
    return ::square
}

fun square(x: Int) = x * x                                          // 2

fun main() {
    val func = operation()                                          // 3
    println(func(2))                                                // 4
}
```

</div>

1. Declaring a higher-order function that returns a function.
2. Declaring a function matching the signature.
3. Invoking `operation` to get the result assigned to a variable. Here `func` becomes `square` which is returned by `operation`.
4. Invoking `func`. The `square` function is actually executed.


---
title: Lambda Functions
---

Lambda functions ("lambdas") are a simple way to create functions ad-hoc. Lambdas can be denoted very concisely in many cases thanks to type inference and the implicit `it` variable.

<div class="sample" markdown="1">

```kotlin
fun main(args: Array<String>) {

    // All examples create a function object that performs upper-casing.
    // So it's a function from String to String

    val upperCase1: (String) -> String = {                             // 1
    str: String -> str.toUpperCase()
    }

    val upperCase2: (String) -> String = { str -> str.toUpperCase() }  // 2

    val upperCase3 = { str: String -> str.toUpperCase() }              // 3

    //  val upperCase4 = { str -> str.toUpperCase() }                    // 4

    val upperCase5: (String) -> String = { it.toUpperCase() }          // 5

    val upperCase6: (String) -> String = String::toUpperCase           // 6


    println(upperCase2("hello"))
    println(upperCase1("hello"))
    println(upperCase3("hello"))
    println(upperCase5("hello"))
    println(upperCase6("hello"))

}



```
</div>

1. A lambda in all its glory, with explicit types everywhere. The lambda is the part in curly braces, which is assigned to a variable of type `(String) -> String` (a function type).
2. Type inference inside lambda: infers type of lambda parameter from type of the variable it's assigned to.
3. Type inference outside lambda: infers type of the variable based on the type of the lambda parameter and return value.
4. You cannot do both together, the compiler has no chance to infer the type that way.
5. For lambdas with a single parameter, you don't have to explicitly name it. Instead, you can use the implicit `it` variable. This is especially useful whenever the type of `it` can be inferred (which is often the case).
6. If your lambda just consists of a single function call, you may prefer function pointers.

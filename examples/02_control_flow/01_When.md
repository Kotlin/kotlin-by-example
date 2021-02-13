# When

Instead of the widely used `switch` statement, Kotlin provides the more flexible and clear `when` construction. It can be used either as a statement or as an expression.

## When Statement

```run-kotlin
fun main() {
    cases("Hello")
    cases(1)
    cases(0L)
    cases(MyClass())
    cases("hello")
}

fun cases(obj: Any) {                                
    when (obj) {                                     // 1   
        1 -> println("One")                          // 2
        "Hello" -> println("Greeting")               // 3
        is Long -> println("Long")                   // 4
        !is String -> println("Not a string")        // 5
        else -> println("Unknown")                   // 6
    }   
}

class MyClass
```

1. This is a `when` statement. 
2. Checks whether `obj` equals to one.
3. Checks whether `obj` equals to `Hello`.
4. Performs type checking.
5. Performs inverse type checking.
6. Default statement (might be omitted).

Note that all branch conditions are checked sequentially until one of them is satisfied. So, only the first suitable branch will be executed.   

## When Expression

```run-kotlin
fun main() {
    println(whenAssign("Hello"))
    println(whenAssign(3.4))
    println(whenAssign(1))
    println(whenAssign(MyClass()))
}

fun whenAssign(obj: Any): Any {
    val result = when (obj) {                   // 1
        1 -> "one"                              // 2
        "Hello" -> 1                            // 3
        is Long -> false                        // 4
        else -> 42                              // 5
    }
    return result
}

class MyClass
```


1. This is a `when` expression. 
2. Sets the value to `"one"` if `obj` equals to one.
3. Sets the value to one if `obj` equals to `Hello`.
4. Sets the value to `false` if `obj` is an instance of `Long`.
5. Sets the value "42" if none of the previous conditions are satisfied. Unlike in `when` _statement_, the default branch is usually required in `when` _expression_, except the case when the compiler can check that other branches cover all possible cases.

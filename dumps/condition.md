#Condition

`if` is an expression, i.e. it returns a value.
Therefore there is no ternary operator (condition ? then : else),
because ordinary `if` works fine in this role.


<div class="language-kotlin" theme="idea" markdown="1">

```kotlin
fun main(args: Array<String>) {
    val a = 10;
    val b = 20;
    println(max(a, b))
}

fun max(a: Int, b: Int) = if (a > b) a else b
```

</div>
    
    
